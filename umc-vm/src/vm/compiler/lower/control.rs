//! Block-ending control flow: jumps and branches

use umc_model::reg_model::{InstrRegT, Reg, RegOrConstant};

use super::int::JitInt;
use super::{Ctx, Flow};
use crate::vm::compiler::emit::*;
use crate::vm::compiler::frame::SlotKey;
use crate::vm::compiler::{BlockExit, CompileError};

pub(super) fn jmp<E: Emitter>(cx: &mut Ctx<E>, target: usize) -> Result<Flow, CompileError> {
    cx.exit(BlockExit::Goto(target));
    Ok(Flow::End)
}

/// link register gets the address of the next instruction, then jump
pub(super) fn jal<E: Emitter>(
    cx: &mut Ctx<E>,
    target: usize,
    link: &Reg<InstrRegT>,
) -> Result<Flow, CompileError> {
    cx.e.mov_imm(Tmp::T0, (cx.pc + 1) as u64, OpWidth::W64);
    let slot = cx.layout.write_slot(SlotKey::Instr { index: link.index });
    cx.e.store_slot(slot, Tmp::T0, OpWidth::W64);
    cx.exit(BlockExit::Goto(target));
    Ok(Flow::End)
}

/// bz (cond Eq) / bnz (cond Ne): go to target if op cond 0, else the next instruction
pub(super) fn branch_zero<E: Emitter, RT: JitInt>(
    cx: &mut Ctx<E>,
    cond: CmpCond,
    target: usize,
    op: &RegOrConstant<RT>,
) -> Result<Flow, CompileError> {
    let next = cx.pc + 1;
    match op {
        // constant operand is just plain jump as outcome is known at compile time
        RegOrConstant::Const(c) => {
            let taken = (RT::imm_bits(c) == 0) == (cond == CmpCond::Eq);
            cx.exit(BlockExit::Goto(if taken { target } else { next }));
        }
        RegOrConstant::Reg(r) => {
            let w = cx.width(r.width)?;
            cx.load_reg(r, Tmp::T0, w);
            let taken = cx.e.new_label();
            cx.e.branch_cmp(cond, Tmp::T0, Src::Imm(0), w, RT::SIGNEDNESS, taken);
            cx.exit(BlockExit::Goto(next)); // not taken
            cx.e.bind(taken);
            cx.exit(BlockExit::Goto(target));
        }
    }
    Ok(Flow::End)
}
