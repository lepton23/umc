use crate::vm::compiler::block::scan;
use crate::vm::compiler::lower::{Lowered, lower_block};
use crate::vm::compiler::{
    CompileError, CompiledBlock, CompiledRequest, Compiler, ExecuteError, bridge::FrameBuffer,
    emit::Emitter, exec_mem::ExecPage,
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
        let covered = scan(program, entry_pc);
        match lower_block(program, covered) {
            Ok(lowered) => {
                let page = commit(lowered.code);
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
                        slots: lowered.layout.slots,
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
    ) -> Result<usize, ExecuteError> {
        // load register states into frame layout
        self.frame.prepare(&block.layout, state);

        // convert page into CompiledFn
        let f = unsafe { block.page.as_fn() };
        // convert frame into mut ptr to pass into CompiledFn
        let frame_ptr = self.frame.as_mut_ptr();

        // Execute compiled code
        let exit_pc = unsafe { f(frame_ptr) };

        // spill results from frame back into register state
        self.frame.commit(&block.layout, state);

        if exit_pc < 0 {
            return Err(ExecuteError::BadExit {
                entry_pc,
                exit_id: exit_pc,
            });
        }

        Ok(exit_pc as usize)
    }
}
