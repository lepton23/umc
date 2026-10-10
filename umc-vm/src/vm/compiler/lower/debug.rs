//! dbg lowered as a call back into the host

use umc_model::reg_model::{Reg, UnsignedRegT};

use super::{Ctx, Flow};
use crate::vm::compiler::CompileError;
use crate::vm::compiler::bridge::jit_dbg_unsigned;
use crate::vm::compiler::emit::*;

pub(super) fn dbg_unsigned<E: Emitter>(
    cx: &mut Ctx<E>,
    r: &Reg<UnsignedRegT>,
) -> Result<Flow, CompileError> {
    let w = cx.width(r.width)?;
    cx.load_reg(r, Tmp::T0, w);
    cx.e.call_host(
        jit_dbg_unsigned as *const () as usize,
        &[
            Src::Tmp(Tmp::T0),
            Src::Imm(r.index as u64),
            Src::Imm(r.width as u64),
        ],
    );
    Ok(Flow::Next)
}
