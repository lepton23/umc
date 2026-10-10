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

    // load registers from 'state' to frame, call host code, spill registers, return where to continue from
    fn execute_block(
        &mut self,
        block: &CompiledBlock,
        state: &mut RegState<SafeAddress>,
        entry_pc: usize,
    ) -> Result<BlockExit, ExecuteError> {
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

        // exit_id indexes into block.exits to give where to continue
        match block.exits.get(exit_id as usize) {
            Some(exit) => Ok(*exit),
            None => Err(ExecuteError::BadExit { entry_pc, exit_id }),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::vm::compiler::CompileError;
    use crate::vm::helper::{read_iaddr, read_uint};
    use crate::vm::widths::uint::UIntWidth;
    use umc_compiler::error_display::assemble_prog;
    use umc_model::instructions::{AnyConsistentNumOp, ConsistentOp};
    use umc_model::reg_model::{InstrRegT, Reg, RegOrConstant, UnsignedRegT};
    use umc_model::{RegIndex, RegWidth};

    fn unsigned(index: RegIndex, width: RegWidth) -> Reg<UnsignedRegT> {
        Reg { index, width }
    }

    fn u64_reg(index: RegIndex) -> Reg<UnsignedRegT> {
        unsigned(index, 64)
    }

    // compile block at pc 0, run it once with given u64 regs set
    fn run_block(src: &str, regs: &[(RegIndex, u64)]) -> (BlockExit, RegState<SafeAddress>) {
        let regs: Vec<_> = regs.iter().map(|&(i, v)| (u64_reg(i), v)).collect();
        run_block_with(src, &regs)
    }

    fn run_block_with(
        src: &str,
        regs: &[(Reg<UnsignedRegT>, u64)],
    ) -> (BlockExit, RegState<SafeAddress>) {
        run_instructions(&assemble_prog(src).unwrap().instructions, regs)
    }

    // for instructions the assembler can't produce
    fn run_instructions(
        program: &[Instruction],
        regs: &[(Reg<UnsignedRegT>, u64)],
    ) -> (BlockExit, RegState<SafeAddress>) {
        let mut jit = NativeJit::new();
        let request = jit.compile_block(program, 0).unwrap();
        let mut state = RegState::new();
        for &(reg, v) in regs {
            UIntWidth::store_u64(reg, &mut state, v);
        }
        let exit = jit.execute_block(&request.block, &mut state, 0).unwrap();
        (exit, state)
    }

    fn compile_err(src: &str) -> CompileError {
        let prog = assemble_prog(src).unwrap();
        match NativeJit::new().compile_block(&prog.instructions, 0) {
            Ok(_) => panic!("expected compile error"),
            Err(e) => e,
        }
    }

    fn read(state: &RegState<SafeAddress>, reg: Reg<UnsignedRegT>) -> u64 {
        read_uint::<u64, _>(&RegOrConstant::Reg(reg), state).unwrap_or_default()
    }

    fn get(state: &RegState<SafeAddress>, index: RegIndex) -> u64 {
        read(state, u64_reg(index))
    }

    const DIV_PROG: &str = "
        mov u64:3, #1
        div u64:2, u64:0, u64:1
        mov u64:4, #9
    ";

    #[test]
    fn div_runs_natively_when_divisor_nonzero() {
        let (exit, state) = run_block(DIV_PROG, &[(0, 17), (1, 5)]);
        assert_eq!(exit, BlockExit::Goto(3));
        assert_eq!([get(&state, 2), get(&state, 3), get(&state, 4)], [3, 1, 9]);
    }

    #[test]
    fn div_by_zero_register_hands_instruction_to_interpreter() {
        let (exit, state) = run_block(DIV_PROG, &[(0, 17), (1, 0), (2, 5), (4, 7)]);
        assert_eq!(exit, BlockExit::Interpret(1));
        // effects before the div are kept, registers written after it are untouched
        assert_eq!([get(&state, 2), get(&state, 3), get(&state, 4)], [5, 1, 7]);
    }

    #[test]
    fn mod_by_zero_register_hands_instruction_to_interpreter() {
        let (exit, _) = run_block("mod u64:2, u64:0, u64:1\n", &[(0, 17), (1, 0)]);
        assert_eq!(exit, BlockExit::Interpret(0));
    }

    #[test]
    fn div_by_zero_constant_hands_instruction_to_interpreter() {
        let (exit, state) = run_block("div u64:2, u64:0, #0\n", &[(0, 17), (2, 5)]);
        assert_eq!(exit, BlockExit::Interpret(0));
        assert_eq!(get(&state, 2), 5);
    }

    #[test]
    fn straight_line_unsigned_ops() {
        const PROG: &str = "
            mov u64:2, u64:0
            add u64:3, u64:0, u64:1
            sub u64:4, u64:0, u64:1
            mul u64:5, u64:0, #3
            and u64:6, u64:0, u64:1
            xor u64:7, u64:0, u64:1
            not u64:8, u64:1
            sgt u64:9, u64:0, u64:1
            slt u64:10, u64:0, #5
            mod u64:11, u64:0, #5
        ";
        let (exit, state) = run_block(PROG, &[(0, 12), (1, 10)]);
        assert_eq!(exit, BlockExit::Goto(10));
        let got: Vec<u64> = (2..=11).map(|i| get(&state, i)).collect();
        assert_eq!(got, [12, 22, 2, 36, 8, 6, !10, 1, 0, 2]);
    }

    #[test]
    fn jmp_exits_to_target() {
        let (exit, _) = run_block("jmp .END\nnop\n.END:\nnop\n", &[]);
        assert_eq!(exit, BlockExit::Goto(2));
    }

    #[test]
    fn jal_links_next_pc() {
        let (exit, state) = run_block("jal .END, n:0\nnop\n.END:\nnop\n", &[]);
        assert_eq!(exit, BlockExit::Goto(2));
        let link = read_iaddr(&RegOrConstant::Reg(Reg::<InstrRegT>::from_index(0)), &state);
        assert_eq!(link.pc(), 1);
    }

    #[test]
    fn dbg_calls_host_and_continues() {
        let (exit, _) = run_block("dbg u64:0\n", &[(0, 3)]);
        assert_eq!(exit, BlockExit::Goto(1));
    }

    #[test]
    fn unlowered_instruction_is_unsupported() {
        let e = compile_err("sub i32:0, #0, #5\n");
        assert!(
            matches!(e, CompileError::Unsupported { pc: 0, .. }),
            "{e:?}"
        );
    }

    #[test]
    fn non_native_width_is_unsupported() {
        let e = compile_err("add u8:0, u8:0, #1\n");
        assert!(
            matches!(e, CompileError::Unsupported { pc: 0, .. }),
            "{e:?}"
        );
    }
}
