use umc_model::reg_model::{Reg, RegOrConstant, UnsignedRegT};

use crate::vm::compiler::frame::{FrameLayout, SlotKey};
use crate::vm::{RegState, SafeAddress, helper};

pub type CompiledFn = unsafe extern "C" fn(frame: *mut u64) -> u32;

pub struct FrameBuffer {
    slots: Vec<u64>,
}

impl FrameBuffer {
    /// read VM register state into frame buffer
    /// i.e. u64:0 = 3, u64:1 = 0, u64:2 = 1 turns into [3, 0, 1] in framebuffer.slots
    pub fn prepare(&mut self, layout: &FrameLayout, state: &RegState<SafeAddress>) {
        self.slots.clear();
        self.slots.extend(layout.slots.iter().map(|info| {
            if !info.live_in {
                return 0;
            }
            match info.key {
                SlotKey::Unsigned { index, width } => {
                    let op = RegOrConstant::Reg(Reg::<UnsignedRegT> { index, width });
                    // helper::read_uint64 means UMC widening on read happens once here precompilation rather than every time line is interpreted
                    // unset regs read as 0
                    helper::read_uint::<u64, _>(&op, state).unwrap_or_default()
                }
            }
        }));
    }

    /// commit results of compiled block back into VM registers
    pub fn commit(&self, layout: &FrameLayout, state: &mut RegState<SafeAddress>) {
        todo!()
    }

    /// Convert frame buffer into mut ptr for passing into CompiledFn
    pub fn as_mut_ptr(&mut self) -> *mut u64 {
        todo!()
    }
}
