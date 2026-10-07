use rustc_hash::{FxHashMap, FxHashSet};

use crate::vm::{compiler::jit::*, memory::safe::SafeAddress, state::RegState};

pub const DEFAULT_THRESHOLD: u32 = 50;

pub struct JitEngine {
    jit: NativeJit,
    counters: Vec<u32>,
    blocks: FxHashMap<usize, CompiledBlock>,
    blacklist: FxHashSet<usize>,
    threshold: u32,
    verbose: bool,
}

impl JitEngine {
    // returns Some(next_pc) if compiled block ran correctly, None if should be interpreted
    // BadExit is a codegen error not a program error so just blacklist block
    pub fn try_run(
        &mut self,
        pc: usize,
        program: &[Instruction],
        state: &mut RegState<SafeAddress>,
    ) -> Option<usize> {
        todo!()
    }
}
