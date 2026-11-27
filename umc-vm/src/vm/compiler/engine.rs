use crate::vm::{
    compiler::{BlockExit, CompiledBlock, Compiler, frame::FrameLayout, jit::*},
    memory::safe::{SafeAddress, SafeMemoryManager},
    state::RegState,
};

use umc_model::instructions::Instruction;

// per-pc jit state, only consulted at block leaders
#[derive(Clone, Copy)]
pub enum PcState {
    Cold(u32),     // times reached as a leader
    Compiled(u32), // index into JitEngine::blocks
    Blacklisted,
}

pub struct JitEngine {
    pub jit: NativeJit,
    pub states: Vec<PcState>,
    pub blocks: Vec<CompiledBlock>,
    pub layout: FrameLayout,
    pub threshold: u32,
    pub verbose: bool,
}

impl JitEngine {
    // returns Some(exit) if compiled block ran correctly, None if should be interpreted
    // BadExit is a codegen error not a program error so just blacklist block
    pub fn try_run(
        &mut self,
        pc: usize,
        program: &[Instruction],
        state: &mut RegState<SafeAddress>,
        memory: &mut SafeMemoryManager,
        constants: &[SafeAddress],
    ) -> Option<BlockExit> {
        let idx = match self.states[pc] {
            PcState::Blacklisted => return None,
            // COLD
            PcState::Cold(n) if n < self.threshold => {
                self.states[pc] = PcState::Cold(n + 1);
                return None;
            }
            // HOT - NOT COMPILED
            PcState::Cold(_) => match self.jit.compile_block(program, pc, &mut self.layout) {
                Ok(request) => {
                    let i = self.blocks.len() as u32;
                    self.blocks.push(request.block);
                    self.states[pc] = PcState::Compiled(i);
                    i
                }
                Err(_) => {
                    self.states[pc] = PcState::Blacklisted;
                    return None;
                }
            },
            PcState::Compiled(i) => i,
        };
        // HOT & COMPILED - natively chain through compiled blocks in one frame
        // prepare runs after any compile, so every block reachable from this table should have its slots already in the framelayout
        self.jit.prepare(&self.layout, state, constants);
        let exit = self.jit.call(&self.blocks[idx as usize], memory);
        // later blocks' dirty lists contain earlier ones as layout dirty flags are cumulative
        self.jit
            .commit(&self.layout, &self.blocks.last().unwrap().dirty, state);
        Some(exit)
    }
}
