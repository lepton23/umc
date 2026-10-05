use crate::vm::compiler::{
    CompileError, CompiledBlock, CompiledRequest, Compiler, ExecuteError, bridge::FrameBuffer,
    emit::Emitter,
};
use crate::vm::{RegState, SafeAddress};

use std::marker::PhantomData;
use umc_model::instructions::Instruction;

pub struct Jit<E: Emitter> {
    frame: FrameBuffer,
    _emitter: PhantomData<E>,
}

impl<E: Emitter> Compiler for Jit<E> {
    // compile basic block starting at 'entry_pc'
    fn compile_block(
        &mut self,
        program: &[Instruction],
        entry_pc: usize,
    ) -> Result<CompiledRequest, CompileError> {
        todo!()
    }

    // load live-in registers from 'state' to frame, call host code, spill dirty registers, return pc to continure from
    fn execute_block(
        &mut self,
        block: &CompiledBlock,
        state: &mut RegState<SafeAddress>,
    ) -> Result<usize, ExecuteError> {
        todo!()
    }
}
