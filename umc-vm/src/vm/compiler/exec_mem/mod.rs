use core::ffi::c_void;
use core::ptr::NonNull;

#[cfg(unix)]
mod posix;
#[cfg(unix)]
use posix as sys;

#[cfg(windows)]
mod win;
#[cfg(windows)]
use win as sys;

/// hardcoded page size just for assurance
const PAGE_SIZE: usize = 4096;

/// entry point of compiled block - will settle once stack frame layout is made
pub type CompiledFn = unsafe extern "C" fn(frame: *mut u64) -> u32;

#[derive(Debug)]
pub enum ExecMemError {
    Alloc(std::io::Error),
    Protect(std::io::Error),
    Flush(std::io::Error),
    ZeroLength,
}

/// owns a W^X region: RW when being filled, RX after commit
pub struct ExecPage {
    ptr: NonNull<c_void>,
    len: usize,
}

impl ExecPage {
    /// allocate RW -> copy -> protect RX -> flush
    pub fn commit(code: &[u8]) -> Result<Self, ExecMemError> {
        if code.is_empty() {
            return Err(ExecMemError::ZeroLength);
        }
        let len = code.len().next_multiple_of(PAGE_SIZE);
        let ptr = sys::alloc_rw(len)?;

        // take ownership immediately so Drop frees region if later step fails
        let page = ExecPage { ptr, len };
        unsafe {
            core::ptr::copy_nonoverlapping(code.as_ptr(), ptr.as_ptr().cast::<u8>(), code.len());
            sys::protect_rx(ptr, len)?;
            sys::flush_icache(ptr, len)?;
        }
        Ok(page)
    }

    pub fn len(&self) -> usize {
        self.len
    }

    pub unsafe fn as_fn(&self) -> CompiledFn {
        unsafe { core::mem::transmute::<*mut c_void, CompiledFn>(self.ptr.as_ptr()) }
    }
}

impl Drop for ExecPage {
    fn drop(&mut self) {
        let freed = unsafe { sys::free(self.ptr, self.len) };
        debug_assert!(freed, "failed to free exec page");
    }
}
