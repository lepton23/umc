use std::ops::Range;

use umc_model::instructions::*;
use umc_model::reg_model::{RegOrConstant, UnsignedRegT};
use umc_model::{RegWidth, instructions::Instruction};

use crate::vm::compiler::emit::*;
use crate::vm::compiler::frame::SlotKey;
use crate::vm::compiler::{
    BlockExit, CompileError,
    emit::{OpWidth, Tmp},
    frame::FrameLayout,
};

pub(crate) struct Lowered {
    pub code: Vec<u8>,
    pub layout: FrameLayout,
    pub exits: Vec<BlockExit>,
}

pub(crate) fn lower_block<E: Emitter>(
    program: &[Instruction],
    range: Range<usize>,
) -> Result<Lowered, CompileError> {
    if range.is_empty() {
        return Err(CompileError::EmptyBlock { pc: range.start });
    }
    let mut e = E::new();
    let mut layout = FrameLayout::new();
    let mut exits = Vec::new();

    e.prologue(&layout);

    for pc in range.clone() {
        match &program[pc] {
            Instruction::Nop => {}
            Instruction::Mov(MovParams::UnsignedInt(dst, s)) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // src -> T1, dst -> T0
                let s = src(&mut layout, s, Tmp::T1, w, &mut e);
                e.unop(UnOp::Mov, Tmp::T0, s, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Add(AddParams::UnsignedInt(ConsistentOp::Single(dst, lhs, rhs))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Add, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Sub(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Mul(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Div(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Mod(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::And(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Or(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Xor(AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(
                dst,
                lhs,
                rhs,
            ))) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // lhs -> T0, rhs -> T1 / immediate, result in T0
                tmp(&mut layout, lhs, Tmp::T0, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T1, w, &mut e);
                e.alu(AluOp::Sub, Tmp::T0, Tmp::T0, rhs, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Not(NotParams::UnsignedInt(dst, s)) => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                // not cmp -> T1, dst -> T0
                let s = src(&mut layout, s, Tmp::T1, w, &mut e);
                e.unop(UnOp::Not, Tmp::T0, s, w);
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Compare {
                cond,
                params:
                    CompareParams {
                        dst,
                        args: ConsistentComparison::UnsignedCompare(lhs, rhs),
                    },
            } => {
                let w = op_width(dst.width).ok_or(CompileError::Unsupported {
                    pc,
                    reason: "unsigned width",
                })?;
                tmp(&mut layout, lhs, Tmp::T1, w, &mut e);
                let rhs = src(&mut layout, rhs, Tmp::T2, w, &mut e);
                e.set_cmp(
                    Tmp::T0,
                    cmp_cond(cond),
                    Tmp::T1,
                    rhs,
                    w,
                    Signedness::Unsigned,
                );
                e.truncate_unsigned(Tmp::T0, dst.width, w);
                let slot = layout.write_slot(SlotKey::Unsigned {
                    index: dst.index,
                    width: dst.width,
                });
                e.store_slot(slot, Tmp::T0, w);
            }
            Instruction::Jmp(RegOrConstant::Const(target)) => {
                // jumps end block so return exit to target
                exit(&mut e, &mut exits, BlockExit::Goto(*target as usize));
                return finish(e, layout, exits);
            }
            Instruction::Jal(RegOrConstant::Const(target), link) => {
                e.mov_imm(Tmp::T0, (pc + 1) as u64, OpWidth::W64);
                let slot = layout.write_slot(SlotKey::Instr { index: link.index });
                e.store_slot(slot, Tmp::T0, OpWidth::W64);
                exit(&mut e, &mut exits, BlockExit::Goto(*target as usize));
                return finish(e, layout, exits);
            }
            Instruction::Bz(RegOrConstant::Const(target), CompareToZero::Unsigned(op))
            | Instruction::Bnz(RegOrConstant::Const(target), CompareToZero::Unsigned(op)) => {
                let cond = match &program[pc] {
                    Instruction::Bz(..) => CmpCond::Eq,
                    _ => CmpCond::Ne,
                };
                match op {
                    // constant operand is just plain jump as outcome is known at compile time
                    RegOrConstant::Const(c) => {
                        let taken = (*c == 0) == (cond == CmpCond::Eq);
                        let to = if taken { *target } else { pc + 1 };
                        exit(&mut e, &mut exits, BlockExit::Goto(to));
                    }
                    RegOrConstant::Reg(r) => {
                        let w = op_width(r.width).ok_or(CompileError::Unsupported {
                            pc,
                            reason: "unsigned width",
                        })?;
                        tmp(&mut layout, op, Tmp::T0, w, &mut e);
                        let taken = e.new_label();
                        e.branch_cmp(cond, Tmp::T0, Src::Imm(0), w, Signedness::Unsigned, taken);
                        exit(&mut e, &mut exits, BlockExit::Goto(pc + 1)); // not taken
                        e.bind(taken);
                        exit(&mut e, &mut exits, BlockExit::Goto(*target));
                    }
                }
                return finish(e, layout, exits);
            }
            // Instruction::Alloc(mem, op) => todo!(),
            // Instruction::Free(mem) => todo!(),
            // Instruction::Load(reg, mem) => todo!(),
            // Instruction::Store(mem, reg) => todo!(),
            // Instruction::SizeOf(reg, reg_set) => todo!(),
            // Instruction::Cast(cast) => todo!(),
            // Instruction::ECall(params) => todo!(),
            // Instruction::Dbg(reg) => todo!(),
            _ => {
                return Err(CompileError::Unsupported {
                    pc,
                    reason: "instruction not lowered",
                });
            }
        };
    }

    // fallthrough exit at end of block
    exit(&mut e, &mut exits, BlockExit::Goto(range.end));
    finish(e, layout, exits)
}

fn op_width(w: RegWidth) -> Option<OpWidth> {
    match w {
        32 => Some(OpWidth::W32),
        64 => Some(OpWidth::W64),
        _ => None,
    }
}

fn src<E: Emitter>(
    layout: &mut FrameLayout,
    op: &RegOrConstant<UnsignedRegT>,
    tmp: Tmp,
    w: OpWidth,
    e: &mut E,
) -> Src {
    match op {
        RegOrConstant::Const(c) => Src::Imm(*c),
        RegOrConstant::Reg(r) => {
            let slot = layout.read_slot(SlotKey::Unsigned {
                index: r.index,
                width: r.width,
            });
            e.load_slot(tmp, slot, w);
            Src::Tmp(tmp)
        }
    }
}

fn tmp<E: Emitter>(
    layout: &mut FrameLayout,
    op: &RegOrConstant<UnsignedRegT>,
    tmp: Tmp,
    w: OpWidth,
    e: &mut E,
) {
    match op {
        RegOrConstant::Const(c) => e.mov_imm(tmp, *c, w),
        RegOrConstant::Reg(r) => {
            let slot = layout.read_slot(SlotKey::Unsigned {
                index: r.index,
                width: r.width,
            });
            e.load_slot(tmp, slot, w);
        }
    }
}

fn finish<E: Emitter>(
    e: E,
    layout: FrameLayout,
    exits: Vec<BlockExit>,
) -> Result<Lowered, CompileError> {
    Ok(Lowered {
        code: e.finish().map_err(CompileError::Emit)?,
        layout,
        exits,
    })
}

fn exit<E: Emitter>(e: &mut E, exits: &mut Vec<BlockExit>, to: BlockExit) {
    exits.push(to);
    e.ret_exit((exits.len() - 1) as u32);
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
