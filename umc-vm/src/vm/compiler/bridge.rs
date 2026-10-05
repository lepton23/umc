use crate::vm::compiler::FrameLayout;
use crate::vm::{RegState, SafeAddress};

pub type CompiledFn = unsafe extern "C" fn(frame: *mut u64) -> u32;

pub struct FrameBuffer {
    slots: Vec<u64>,
}

impl FrameBuffer {
    /// helper::read_uint64 means UMC widening on read happens once here
    /// unset regs read as 0
    pub fn prepare(&mut self, layout: &FrameLayout, state: &RegState<SafeAddress>);

    pub fn commit(&self, layout: &FrameLayout, state: &mut RegState<SafeAddress>);

    pub fn as_mut_ptr(&mut self) -> &mut u64;
}
