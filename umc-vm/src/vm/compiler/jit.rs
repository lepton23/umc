use crate::vm::compiler::block::scan;
use crate::vm::compiler::lower::lower_block;
use crate::vm::compiler::{
    BlockExit, CompileError, CompiledBlock, CompiledRequest, CompiledStats, Compiler, ExecuteError,
    bridge::FrameBuffer, emit::Emitter, emit::NativeEmitter, exec_mem::ExecPage,
};
use crate::vm::{RegState, SafeAddress};

use std::marker::PhantomData;
use umc_model::instructions::Instruction;

pub type NativeJit = Jit<NativeEmitter>;

pub struct Jit<E: Emitter> {
    frame: FrameBuffer,
    _emitter: PhantomData<E>,
}

impl<E: Emitter> Jit<E> {
    pub fn new() -> Self {
        Self {
            frame: FrameBuffer::new(),
            _emitter: PhantomData,
        }
    }
}

impl<E: Emitter> Compiler for Jit<E> {
    // compile basic block starting at 'entry_pc'
    fn compile_block<'p>(
        &mut self,
        program: &'p [Instruction],
        entry_pc: usize,
    ) -> Result<CompiledRequest<'p>, CompileError> {
        let covered = scan(program, entry_pc);
        match lower_block::<E>(program, covered.clone()) {
            Ok(lowered) => {
                let page = match ExecPage::commit(&lowered.code) {
                    Ok(p) => p,
                    Err(e) => return Err(CompileError::ExecMem(e)),
                };
                // clone before layout is moved into the block
                let slots = lowered.layout.slots.clone();
                Ok(CompiledRequest {
                    block: CompiledBlock {
                        entry_pc,
                        covered,
                        layout: lowered.layout,
                        exits: lowered.exits,
                        page,
                    },
                    stats: CompiledStats {
                        program,
                        code: lowered.code,
                        slots,
                    },
                })
            }
            Err(e) => Err(e),
        }
    }

    // load live-in registers from 'state' to frame, call host code, spill dirty registers, return pc to continure from
    fn execute_block(
        &mut self,
        block: &CompiledBlock,
        state: &mut RegState<SafeAddress>,
        entry_pc: usize,
    ) -> Result<usize, ExecuteError> {
        // load register states into frame layout
        self.frame.prepare(&block.layout, state);

        // convert page into CompiledFn
        let f = unsafe { block.page.as_fn() };
        // convert frame into mut ptr to pass into CompiledFn
        let frame_ptr = self.frame.as_mut_ptr();

        // Execute compiled code
        let exit_id = unsafe { f(frame_ptr) };

        // spill results from frame back into register state
        self.frame.commit(&block.layout, state);

        // exit_id indexes into block.exits to give the next pc
        match block.exits.get(exit_id as usize) {
            Some(BlockExit::Goto(pc)) => Ok(*pc),
            None => Err(ExecuteError::BadExit { entry_pc, exit_id }),
        }
    }
}
