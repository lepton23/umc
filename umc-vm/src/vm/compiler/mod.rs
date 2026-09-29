//! Compiler for Universal Machine Code to a specific machine code
//! This is used in Just-in-Time compilation

mod block;
mod bridge;
mod emit;
mod exec_mem;
mod frame;
#[cfg(feature = "jit")]
mod jit;
mod lower;

use crate::vm::{RegState, SafeAddress};
use umc_model::instructions::Instruction;

// block could not be compiled, entry index is blacklisted and interpreted for rest of program
#[derive(Debug, PartialEq)]
pub enum CompileError {
    Unsupported { pc: usize, reason: &'static str },
    EmptyBlock { pc: usize },
    Emit(EmitError),
    ExecMem(ExecMemError),
}

#[derive(Debug, PartialEq)]
pub enum ExecuteError {
    // codegen bugs - invalid exit id
    BadExit { entry_pc: usize, exit_id: u32 },
}

// where control goes when block exits
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum BlockExit {
    Goto(usize),
}

pub struct CompiledBlock {
    entry_pc: usize,
    covered: Range<usize>,
    layout: FrameLayout,
    exits: Vec<BlockExit>, // return val -> next pc
    page: ExecPage,        // owns W^X pages
}

pub struct CompiledRequest {
    pub block: CompiledBlock,
    pub stats: CompiledStats, // umc instructions, code bytes, frame slots, live in, dirty etc
}

pub trait Compiler {
    // compile basic block starting at 'entry_pc'
    fn compile_block(
        &mut self,
        program: &[Instruction],
        entry_pc: usize,
    ) -> Result<CompiledRequest, CompileError>;

    // load live-in registers from 'state' to frame, call host code, spill dirty registers, return pc to continure from
    fn execute_block(
        &mut self,
        block: &CompiledBlock,
        state: &mut RegState<SafeAddress>,
    ) -> Result<usize, ExecuteError>;
}
