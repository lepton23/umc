//! Memory address ops and load / store / alloc / free through host calls
//! An address is a block slot followed by offset slot

use umc_model::{
    RegWidth,
    instructions::{AnySingleReg, BinaryCondition, OffsetOp},
    reg_model::{MemRegT, Reg, RegOrConstant, UnsignedRegT},
};

use crate::vm::compiler::{
    CompileError,
    bridge::NULL_BLOCK,
    emit::{AluOp, Arg, CmpCond, Emitter, OpWidth, Signedness, Src, Tmp},
    frame::{FrameSlot, MemKey},
    host_mem::{self, jit_load, jit_store},
    lower::{
        Ctx, Flow, address,
        int::{cmp_cond, store_flag},
        operand::JitReg,
    },
};
use crate::vm::types::address::InstructionAddress;

fn next(s: FrameSlot) -> FrameSlot {
    FrameSlot::new(s.0 + 1)
}

fn addr_slot<E: Emitter>(cx: &mut Ctx<E>, op: &RegOrConstant<MemRegT>) -> FrameSlot {
    match op {
        RegOrConstant::Reg(r) => cx.layout.mem_read_slot(MemKey::Reg(r.index)),
        RegOrConstant::Const(label) => cx.layout.mem_read_slot(MemKey::Const(*label)),
    }
}

/// block into t, interpreter panics or skips on unset address so let it
fn load_block_checked<E: Emitter>(cx: &mut Ctx<E>, a: FrameSlot, t: Tmp) {
    cx.e.load_slot(t, a, OpWidth::W64);
    cx.bail_if(
        CmpCond::Eq,
        t,
        Src::Imm(NULL_BLOCK),
        OpWidth::W64,
        Signedness::Unsigned,
    );
}

/// host status in T0, nonzero means the access failed
/// host returns u32 so only the low half of T0 is defined
fn call_checked<E: Emitter>(cx: &mut Ctx<E>, f: usize, args: &[Arg]) {
    cx.e.call_host(f, args);
    cx.bail_if(
        CmpCond::Ne,
        Tmp::T0,
        Src::Imm(0),
        OpWidth::W32,
        Signedness::Unsigned,
    );
}

/// access size of a value register the inline path handles
fn prim_bytes<E: Emitter>(cx: &Ctx<E>, width: RegWidth, float: bool) -> Result<u8, CompileError> {
    match (width, float) {
        (8 | 16, false) | (32 | 64, _) => Ok((width / 8) as u8),
        _ => Err(cx.unsupported("load width")),
    }
}

pub(super) fn mov<E: Emitter>(
    cx: &mut Ctx<E>,
    dst: &Reg<MemRegT>,
    src: &RegOrConstant<MemRegT>,
) -> Result<Flow, CompileError> {
    let a = addr_slot(cx, src);
    load_block_checked(cx, a, Tmp::T0);
    cx.e.load_slot(Tmp::T1, next(a), OpWidth::W64);

    let d = cx.layout.mem_write_slot(dst.index);
    cx.e.store_slot(d, Tmp::T1, OpWidth::W64);

    Ok(Flow::Next)
}

pub(super) fn add<E: Emitter>(
    cx: &mut Ctx<E>,
    dst: &Reg<MemRegT>,
    base: &RegOrConstant<MemRegT>,
    offset: &OffsetOp,
) -> Result<Flow, CompileError> {
    let a = addr_slot(cx, base);
    load_block_checked(cx, a, Tmp::T0);
    cx.e.load_slot(Tmp::T1, next(a), OpWidth::W64);
    address::load_offset(cx, offset, Tmp::T2)?;
    cx.e.alu(
        AluOp::Add,
        Tmp::T0,
        Tmp::T1,
        Src::Tmp(Tmp::T2),
        OpWidth::W64,
        Signedness::Unsigned,
    );

    // saturating add_signed clamps on wrap, hand that case to interpreter
    let neg = cx.e.new_label();
    let done = cx.e.new_label();
    cx.e.branch_cmp(
        CmpCond::Lt,
        Tmp::T2,
        Src::Imm(0),
        OpWidth::W64,
        Signedness::Signed,
        neg,
    );
    cx.bail_if(
        CmpCond::Lt,
        Tmp::T0,
        Src::Tmp(Tmp::T1),
        OpWidth::W64,
        Signedness::Unsigned,
    );
    cx.e.jump(done);
    cx.e.bind(neg);
    cx.bail_if(
        CmpCond::Gt,
        Tmp::T0,
        Src::Tmp(Tmp::T1),
        OpWidth::W64,
        Signedness::Unsigned,
    );
    cx.e.bind(done);

    let d = cx.layout.mem_write_slot(dst.index);
    cx.e.store_slot(next(d), Tmp::T0, OpWidth::W64);
    // d may equal a, block is unchanged either way
    cx.e.load_slot(Tmp::T0, a, OpWidth::W64);
    cx.e.store_slot(d, Tmp::T0, OpWidth::W64);

    Ok(Flow::Next)
}

pub(super) fn compare<E: Emitter>(
    cx: &mut Ctx<E>,
    cond: &BinaryCondition,
    dst: &Reg<UnsignedRegT>,
    lhs: &RegOrConstant<MemRegT>,
    rhs: &RegOrConstant<MemRegT>,
) -> Result<Flow, CompileError> {
    let l = addr_slot(cx, lhs);
    let r = addr_slot(cx, rhs);
    load_block_checked(cx, l, Tmp::T0);
    load_block_checked(cx, r, Tmp::T1);

    let other = cx.e.new_label();
    let done = cx.e.new_label();
    cx.e.branch_cmp(
        CmpCond::Ne,
        Tmp::T0,
        Src::Tmp(Tmp::T1),
        OpWidth::W64,
        Signedness::Unsigned,
        other,
    );
    cx.e.load_slot(Tmp::T1, next(l), OpWidth::W64);
    cx.e.load_slot(Tmp::T2, next(r), OpWidth::W64);
    cx.e.set_cmp(
        Tmp::T0,
        cmp_cond(cond),
        Tmp::T1,
        Src::Tmp(Tmp::T2),
        OpWidth::W64,
        Signedness::Unsigned,
    );
    cx.e.jump(done);
    cx.e.bind(other);
    // different blocks are unordered, every condition is false
    cx.e.mov_imm(Tmp::T0, 0, OpWidth::W64);
    cx.e.bind(done);

    store_flag(cx, dst)
}

pub(super) fn load<E: Emitter>(
    cx: &mut Ctx<E>,
    dst: &AnySingleReg,
    src: &RegOrConstant<MemRegT>,
) -> Result<Flow, CompileError> {
    let a = addr_slot(cx, src);
    let (bytes, sign, d) = match dst {
        AnySingleReg::Unsigned(r) => (
            prim_bytes(cx, r.width, false)?,
            Signedness::Unsigned,
            cx.layout.write_slot(JitReg::key(r)),
        ),
        AnySingleReg::Signed(r) => (
            prim_bytes(cx, r.width, false)?,
            Signedness::Signed,
            cx.layout.write_slot(JitReg::key(r)),
        ),
        // raw bits, f32 zero extended like SlotPrim::to_slot
        AnySingleReg::Float(r) => (
            prim_bytes(cx, r.width, true)?,
            Signedness::Unsigned,
            cx.layout.write_slot(JitReg::key(r)),
        ),
        // rare, stay on host calls
        AnySingleReg::Instr(r) => {
            let d = cx.layout.write_slot(JitReg::key(r));
            return host_access(
                cx,
                jit_load::<InstructionAddress> as *const () as usize,
                a,
                d,
            );
        }
        AnySingleReg::Mem(r) => {
            let d = cx.layout.mem_write_slot(r.index);
            return host_access(cx, host_mem::jit_load_mem as *const () as usize, a, d);
        }
    };
    cx.e.load_slot(Tmp::T0, a, OpWidth::W64);
    cx.e.load_slot(Tmp::T1, next(a), OpWidth::W64);
    let fail = cx.bail_label();
    cx.e.load_mem(Tmp::T0, Tmp::T0, Tmp::T1, bytes, sign, fail);
    cx.e.store_slot(d, Tmp::T0, OpWidth::W64);
    Ok(Flow::Next)
}

/// unset source reads 0 / NULL, same as interpreter's unwrap_or defaults
pub(super) fn store<E: Emitter>(
    cx: &mut Ctx<E>,
    dst: &RegOrConstant<MemRegT>,
    src: &AnySingleReg,
) -> Result<Flow, CompileError> {
    let a = addr_slot(cx, dst);
    let (bytes, s) = match src {
        AnySingleReg::Unsigned(r) => (
            prim_bytes(cx, r.width, false)?,
            cx.layout.read_slot(JitReg::key(r)),
        ),
        AnySingleReg::Signed(r) => (
            prim_bytes(cx, r.width, false)?,
            cx.layout.read_slot(JitReg::key(r)),
        ),
        AnySingleReg::Float(r) => (
            prim_bytes(cx, r.width, true)?,
            cx.layout.read_slot(JitReg::key(r)),
        ),
        AnySingleReg::Instr(r) => {
            let s = cx.layout.read_slot(JitReg::key(r));
            return host_access(
                cx,
                jit_store::<InstructionAddress> as *const () as usize,
                a,
                s,
            );
        }
        AnySingleReg::Mem(r) => {
            let s = cx.layout.mem_read_slot(MemKey::Reg(r.index));
            return host_access(cx, host_mem::jit_store_mem as *const () as usize, a, s);
        }
    };
    cx.e.load_slot(Tmp::T0, a, OpWidth::W64);
    cx.e.load_slot(Tmp::T1, next(a), OpWidth::W64);
    cx.e.load_slot(Tmp::T2, s, OpWidth::W64);
    let fail = cx.bail_label();
    cx.e.store_mem(Tmp::T0, Tmp::T1, Tmp::T2, bytes, fail);
    Ok(Flow::Next)
}

/// load / store through host fn f(mem, frame, addr slot, value slot)
fn host_access<E: Emitter>(
    cx: &mut Ctx<E>,
    f: usize,
    a: FrameSlot,
    v: FrameSlot,
) -> Result<Flow, CompileError> {
    call_checked(
        cx,
        f,
        &[
            Arg::Mem,
            Arg::Frame,
            Arg::Imm(a.0 as u64),
            Arg::Imm(v.0 as u64),
        ],
    );
    Ok(Flow::Next)
}

pub(super) fn alloc<E: Emitter>(
    cx: &mut Ctx<E>,
    dst: &Reg<MemRegT>,
    size: &RegOrConstant<UnsignedRegT>,
) -> Result<Flow, CompileError> {
    let w = size.width().map_or(Ok(OpWidth::W64), |b| cx.width(b))?;
    cx.load(size, Tmp::T0, w);
    let d = cx.layout.mem_write_slot(dst.index);
    cx.e.call_host(
        host_mem::jit_alloc as *const () as usize,
        &[
            Arg::Mem,
            Arg::Frame,
            Arg::Imm(d.0 as u64),
            Arg::Tmp(Tmp::T0),
        ],
    );
    Ok(Flow::Next)
}

pub(super) fn free<E: Emitter>(cx: &mut Ctx<E>, r: &Reg<MemRegT>) -> Result<Flow, CompileError> {
    let a = addr_slot(cx, &RegOrConstant::Reg(r.clone()));
    // interpreter panics on unset
    load_block_checked(cx, a, Tmp::T0);
    cx.e.call_host(
        host_mem::jit_free as *const () as usize,
        &[Arg::Mem, Arg::Frame, Arg::Imm(a.0 as u64)],
    );
    Ok(Flow::Next)
}
