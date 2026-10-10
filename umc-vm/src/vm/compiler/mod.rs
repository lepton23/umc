//! Compiler for Universal Machine Code to a specific machine code
//! This is used in Just-in-Time compilation

mod block;
mod bridge;
mod emit;
pub mod engine;
mod exec_mem;
mod frame;
pub mod jit;
mod lower;

use crate::vm::compiler::frame::SlotInfo;
use crate::vm::{RegState, SafeAddress};

use crate::vm::compiler::{
    emit::EmitError,
    exec_mem::{ExecMemError, ExecPage},
    frame::{FrameLayout, FrameSlot},
};

use umc_model::instructions::Instruction;

use std::ops::Range;

// block could not be compiled, entry index is blacklisted and interpreted for rest of program
#[derive(Debug)]
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
    // compiled code can't handle this instruction at runtime (i.e. divide by zero)
    // interpreter must execute exactly this one instruction before the jit is tried again
    // otherwise a block starting at this pc would bail back to itself forever
    Interpret(usize),
}

pub struct CompiledBlock {
    entry_pc: usize,
    covered: Range<usize>,
    layout: FrameLayout,
    exits: Vec<BlockExit>, // return val -> next pc
    page: ExecPage,        // owns W^X pages
}

pub struct CompiledRequest<'p> {
    pub block: CompiledBlock,
    pub stats: CompiledStats<'p>, // umc instructions, code bytes, frame slots, live in, dirty etc
}

pub struct CompiledStats<'p> {
    program: &'p [Instruction],
    code: Vec<u8>,
    slots: Vec<SlotInfo>,
}

pub trait Compiler {
    // compile basic block starting at 'entry_pc'
    fn compile_block<'p>(
        &mut self,
        program: &'p [Instruction],
        entry_pc: usize,
    ) -> Result<CompiledRequest<'p>, CompileError>;

    // load registers from 'state' to frame, call host code, spill registers, return where to continue from
    fn execute_block(
        &mut self,
        block: &CompiledBlock,
        state: &mut RegState<SafeAddress>,
        entry_pc: usize,
    ) -> Result<BlockExit, ExecuteError>;
}
