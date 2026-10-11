//! Integer alu ops, not and compare

use umc_model::RegWidth;
use umc_model::instructions::BinaryCondition;
use umc_model::reg_model::{Reg, RegOrConstant, SignedRegT, UnsignedRegT};

use super::operand::JitReg;
use super::{Ctx, Flow};
use crate::vm::compiler::emit::*;
use crate::vm::compiler::{BlockExit, CompileError};

/// integer register type with native alu ops
pub(super) trait JitInt: JitReg<WIDTH = RegWidth> {
    const SIGNEDNESS: Signedness;
    /// bring t back to the declared register width after an op
    fn wrap<E: Emitter>(e: &mut E, t: Tmp, bits: RegWidth, w: OpWidth);
}

impl JitInt for UnsignedRegT {
    const SIGNEDNESS: Signedness = Signedness::Unsigned;
    fn wrap<E: Emitter>(e: &mut E, t: Tmp, bits: RegWidth, w: OpWidth) {
        e.truncate_unsigned(t, bits, w);
    }
}

impl JitInt for SignedRegT {
    const SIGNEDNESS: Signedness = Signedness::Signed;
    fn wrap<E: Emitter>(e: &mut E, t: Tmp, bits: RegWidth, w: OpWidth) {
        e.sign_extend(t, bits, w);
    }
}

/// wrap T0 to dst width and store it
fn write_result<E: Emitter, RT: JitInt>(cx: &mut Ctx<E>, dst: &Reg<RT>, w: OpWidth) {
    RT::wrap(&mut cx.e, Tmp::T0, dst.width, w);
    cx.store(dst, Tmp::T0, w);
}

pub(super) fn mov<E: Emitter, RT: JitInt>(
    cx: &mut Ctx<E>,
    dst: &Reg<RT>,
    s: &RegOrConstant<RT>,
) -> Result<Flow, CompileError> {
    let w = cx.width(dst.width)?;
    // src -> T1, dst -> T0
    let s = cx.src(s, Tmp::T1, w);
    cx.e.unop(UnOp::Mov, Tmp::T0, s, w);
    write_result(cx, dst, w);
    Ok(Flow::Next)
}

pub(super) fn binop<E: Emitter, RT: JitInt>(
    cx: &mut Ctx<E>,
    op: AluOp,
    dst: &Reg<RT>,
    lhs: &RegOrConstant<RT>,
    rhs: &RegOrConstant<RT>,
) -> Result<Flow, CompileError> {
    let w = cx.width(dst.width)?;
    // lhs -> T0, rhs -> T1 / immediate, result in T0
    cx.load(lhs, Tmp::T0, w);
    let rhs = cx.src(rhs, Tmp::T1, w);
    if let AluOp::Div | AluOp::Mod = op
        && let Flow::End = guard_divisor::<E, RT>(cx, Tmp::T0, rhs, w)
    {
        return Ok(Flow::End);
    }
    cx.e.alu(op, Tmp::T0, Tmp::T0, rhs, w, RT::SIGNEDNESS);
    write_result(cx, dst, w);
    Ok(Flow::Next)
}

/// native div faults on zero, interpreter reports the error instead
fn guard_divisor<E: Emitter, RT: JitInt>(cx: &mut Ctx<E>, lhs: Tmp, rhs: Src, w: OpWidth) -> Flow {
    let signed = matches!(RT::SIGNEDNESS, Signedness::Signed);
    match rhs {
        Src::Imm(0) => {
            cx.exit(BlockExit::Interpret(cx.pc));
            Flow::End
        }
        // constant -1 overflows if dividend is MIN
        Src::Imm(d) if signed && is_neg_one(d, w) => {
            cx.bail_if(CmpCond::Eq, lhs, Src::Imm(signed_min(w)), w, RT::SIGNEDNESS);
            Flow::Next
        }
        Src::Imm(_) => Flow::Next,
        Src::Tmp(t) => {
            cx.bail_if(CmpCond::Eq, t, Src::Imm(0), w, RT::SIGNEDNESS);
            if signed {
                // if divisor is -1 and dividend is MIN
                let ok = cx.e.new_label();
                cx.e.branch_cmp(CmpCond::Ne, t, Src::Imm(u64::MAX), w, RT::SIGNEDNESS, ok);
                cx.bail_if(CmpCond::Eq, lhs, Src::Imm(signed_min(w)), w, RT::SIGNEDNESS);
                cx.e.bind(ok);
            }
            Flow::Next
        }
    }
}

fn is_neg_one(d: u64, w: OpWidth) -> bool {
    match w {
        OpWidth::W32 => d as u32 == u32::MAX,
        OpWidth::W64 => d == u64::MAX,
    }
}

fn signed_min(w: OpWidth) -> u64 {
    match w {
        OpWidth::W32 => i32::MIN as u32 as u64,
        OpWidth::W64 => i64::MIN as u64,
    }
}

pub(super) fn not<E: Emitter, RT: JitInt>(
    cx: &mut Ctx<E>,
    dst: &Reg<RT>,
    s: &RegOrConstant<RT>,
) -> Result<Flow, CompileError> {
    let w = cx.width(dst.width)?;
    // src -> T1, dst -> T0
    let s = cx.src(s, Tmp::T1, w);
    cx.e.unop(UnOp::Not, Tmp::T0, s, w);
    write_result(cx, dst, w);
    Ok(Flow::Next)
}

/// dst = 1 if lhs cond rhs else 0
pub(super) fn compare<E: Emitter, RT: JitInt>(
    cx: &mut Ctx<E>,
    cond: &BinaryCondition,
    dst: &Reg<UnsignedRegT>,
    lhs: &RegOrConstant<RT>,
    rhs: &RegOrConstant<RT>,
) -> Result<Flow, CompileError> {
    // compares at dst width, so a u1 dst is rejected even when operands are native widths
    let w = lhs
        .width()
        .or(rhs.width())
        .ok_or(CompileError::Emit(EmitError::Asm(
            "couldn't get width for signed comparison".to_string(),
        )))?;
    let w = cx.width(w)?;
    cx.load(lhs, Tmp::T1, w);
    let rhs = cx.src(rhs, Tmp::T2, w);
    cx.e.set_cmp(Tmp::T0, cmp_cond(cond), Tmp::T1, rhs, w, RT::SIGNEDNESS);
    write_result(cx, dst, w);
    Ok(Flow::Next)
}

fn cmp_cond(cond: &BinaryCondition) -> CmpCond {
    match cond {
        BinaryCondition::Equal => CmpCond::Eq,
        BinaryCondition::GreaterThan => CmpCond::Gt,
        BinaryCondition::GreaterThanOrEqualTo => CmpCond::Ge,
        BinaryCondition::LessThan => CmpCond::Lt,
        BinaryCondition::LessThanOrEqualTo => CmpCond::Le,
    }
}
