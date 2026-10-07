use rustc_hash::{FxHashMap, FxHashSet};

use crate::vm::{
    compiler::{CompiledBlock, Compiler, jit::*},
    memory::safe::SafeAddress,
    state::RegState,
};
use umc_model::instructions::Instruction;

pub struct JitEngine {
    pub jit: NativeJit,
    pub counters: Vec<u32>,
    pub blocks: FxHashMap<usize, CompiledBlock>,
    pub blacklist: FxHashSet<usize>,
    pub threshold: u32,
    pub verbose: bool,
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
        // Blacklisted blocks should be interpreted
        if self.blacklist.contains(&pc) {
            println!("Interpreting blacklisted block at pc: {pc}");
            return None;
        }
        // COLD
        if self.counters[pc] < self.threshold {
            self.counters[pc] += 1;
            return None;
        } else if !self.blocks.contains_key(&pc) {
            // HOT - NOT COMPILED
            println!("Threshold reached for block at pc: {pc}, compiling block...");
            match self.jit.compile_block(program, pc) {
                Ok(request) => self.blocks.insert(pc, request.block),
                Err(_) => {
                    println!("Failed compilation: blacklisting block...");
                    self.blacklist.insert(pc);
                    return None;
                }
            };
        }
        // HOT & COMPILED
        println!("Executing compiled block at pc: {pc}");
        match self.jit.execute_block(self.blocks.get(&pc)?, state, pc) {
            Ok(exit_id) => return Some(exit_id),
            Err(_) => {
                self.blacklist.insert(pc);
                return None;
            }
        }
    }
}
