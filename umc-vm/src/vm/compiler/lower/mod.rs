//! Lowers a basic block of UMC instructions to native code through an Emitter
//! Each instruction family has its own file, this one drives the block and dispatches

mod control;
mod debug;
mod int;
mod operand;

use std::ops::Range;

use umc_model::instructions::*;
use umc_model::reg_model::RegOrConstant;

use crate::vm::compiler::emit::*;
use crate::vm::compiler::{BlockExit, CompileError, frame::FrameLayout};

pub(crate) struct Lowered {
    pub code: Vec<u8>,
    pub layout: FrameLayout,
    pub exits: Vec<BlockExit>,
}

/// whether the block carries on after an instruction
enum Flow {
    Next,
    End,
}

/// state shared by every instruction lowered in a block
struct Ctx<E: Emitter> {
    e: E,
    layout: FrameLayout,
    exits: Vec<BlockExit>,
    // out-of-line BlockExit::Interpret stubs, emitted after main code
    bails: Vec<(Label, usize)>,
    // instruction currently being lowered
    pc: usize,
}

impl<E: Emitter> Ctx<E> {
    fn new(pc: usize) -> Self {
        Self {
            e: E::new(),
            layout: FrameLayout::new(),
            exits: Vec::new(),
            bails: Vec::new(),
            pc,
        }
    }

    /// return from compiled code, continuing at `to`
    fn exit(&mut self, to: BlockExit) {
        self.exits.push(to);
        self.e.ret_exit((self.exits.len() - 1) as u32);
    }

    /// hand current instruction to the interpreter when lhs cond rhs holds at runtime
    fn bail_if(&mut self, cond: CmpCond, lhs: Tmp, rhs: Src, w: OpWidth, s: Signedness) {
        let bail = self.e.new_label();
        self.e.branch_cmp(cond, lhs, rhs, w, s, bail);
        self.bails.push((bail, self.pc));
    }

    fn unsupported(&self, reason: &'static str) -> CompileError {
        CompileError::Unsupported {
            pc: self.pc,
            reason,
        }
    }

    fn finish(mut self) -> Result<Lowered, CompileError> {
        for (label, pc) in std::mem::take(&mut self.bails) {
            self.e.bind(label);
            self.exit(BlockExit::Interpret(pc));
        }
        Ok(Lowered {
            code: self.e.finish().map_err(CompileError::Emit)?,
            layout: self.layout,
            exits: self.exits,
        })
    }
}

pub(crate) fn lower_block<E: Emitter>(
    program: &[Instruction],
    range: Range<usize>,
) -> Result<Lowered, CompileError> {
    if range.is_empty() {
        return Err(CompileError::EmptyBlock { pc: range.start });
    }
    let mut cx = Ctx::<E>::new(range.start);
    cx.e.prologue(&cx.layout);

    for pc in range.clone() {
        cx.pc = pc;
        if let Flow::End = lower_instr(&mut cx, &program[pc])? {
            return cx.finish();
        }
    }

    // fallthrough exit at end of block
    cx.exit(BlockExit::Goto(range.end));
    cx.finish()
}

fn lower_instr<E: Emitter>(cx: &mut Ctx<E>, instr: &Instruction) -> Result<Flow, CompileError> {
    match instr {
        Instruction::Nop => Ok(Flow::Next),
        Instruction::Mov(MovParams::UnsignedInt(dst, s)) => int::mov(cx, dst, s),
        Instruction::Add(AddParams::UnsignedInt(ConsistentOp::Single(dst, lhs, rhs))) => {
            int::binop(cx, AluOp::Add, dst, lhs, rhs)
        }
        Instruction::Sub(p) => num_op(cx, AluOp::Sub, p),
        Instruction::Mul(p) => num_op(cx, AluOp::Mul, p),
        Instruction::Div(p) => num_op(cx, AluOp::Div, p),
        Instruction::Mod(p) => num_op(cx, AluOp::Mod, p),
        Instruction::And(p) => num_op(cx, AluOp::And, p),
        Instruction::Or(p) => num_op(cx, AluOp::Or, p),
        Instruction::Xor(p) => num_op(cx, AluOp::Xor, p),
        Instruction::Not(NotParams::UnsignedInt(dst, s)) => int::not(cx, dst, s),
        Instruction::Compare {
            cond,
            params:
                CompareParams {
                    dst,
                    args: ConsistentComparison::UnsignedCompare(lhs, rhs),
                },
        } => int::compare(cx, cond, dst, lhs, rhs),
        Instruction::Jmp(RegOrConstant::Const(target)) => control::jmp(cx, *target),
        Instruction::Jal(RegOrConstant::Const(target), link) => control::jal(cx, *target, link),
        Instruction::Bz(RegOrConstant::Const(target), CompareToZero::Unsigned(op)) => {
            control::branch_zero(cx, CmpCond::Eq, *target, op)
        }
        Instruction::Bnz(RegOrConstant::Const(target), CompareToZero::Unsigned(op)) => {
            control::branch_zero(cx, CmpCond::Ne, *target, op)
        }
        // Alloc, Free, Load, Store, SizeOf, Cast, ECall not lowered yet
        Instruction::Dbg(AnyReg::Single(AnySingleReg::Unsigned(r))) => debug::dbg_unsigned(cx, r),
        _ => not_lowered(cx),
    }
}

/// Sub / Mul / Div / Mod / And / Or / Xor share operand shapes
fn num_op<E: Emitter>(
    cx: &mut Ctx<E>,
    op: AluOp,
    p: &AnyConsistentNumOp,
) -> Result<Flow, CompileError> {
    match p {
        AnyConsistentNumOp::UnsignedInt(ConsistentOp::Single(dst, lhs, rhs)) => {
            int::binop(cx, op, dst, lhs, rhs)
        }
        _ => not_lowered(cx),
    }
}

fn not_lowered<E: Emitter>(cx: &Ctx<E>) -> Result<Flow, CompileError> {
    println!("Unsupported instruction for lowering as of now");
    Err(cx.unsupported("instruction not lowered"))
}
