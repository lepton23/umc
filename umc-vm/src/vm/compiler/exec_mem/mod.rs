use core::ffi::c_void;
use core::ptr::NonNull;

#[cfg(unix)]
mod posix;

#[cfg(windows)]
mod win;

#[derive(Debug)]
pub enum ExecMemError {
    Alloc(std::io::Error),
    Protect(std::io::Error),
    Flush(std::io::Error),
    ZeroLength,
}

pub struct ExecPage {
    ptr: NonNull<c_void>,
    len: usize,
}

impl ExecPage {
    pub fn allocate() {
        todo!();
    }
}
