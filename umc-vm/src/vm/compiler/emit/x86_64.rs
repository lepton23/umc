use crate::vm::compiler::emit::*;

use iced_x86::{Code, Instruction, Register, code_asm::*};

const FRAME_BASE: AsmRegister64 = rbx;
const SCRATCH64: AsmRegister64 = r11;

#[cfg(windows)]
mod sys {
    use super::*;
    pub(super) const ARG: AsmRegister64 = rcx;
}

#[cfg(unix)]
mod sys {
    use super::*;
    pub(super) const ARG: AsmRegister64 = rdi;
}

use sys::*;

fn r64(t: Tmp) -> AsmRegister64 {
    match t {
        Tmp::T0 => rax,
        Tmp::T1 => rcx,
        Tmp::T2 => rdx,
    }
}

fn r32(t: Tmp) -> AsmRegister32 {
    match t {
        Tmp::T0 => eax,
        Tmp::T1 => ecx,
        Tmp::T2 => edx,
    }
}

fn r16(t: Tmp) -> AsmRegister16 {
    match t {
        Tmp::T0 => ax,
        Tmp::T1 => cx,
        Tmp::T2 => dx,
    }
}

fn r8(t: Tmp) -> AsmRegister8 {
    match t {
        Tmp::T0 => al,
        Tmp::T1 => cl,
        Tmp::T2 => dl,
    }
}

// what emitter knows about label
struct LabelState {
    iced: CodeLabel,
    bound: bool,
    referenced: bool, // set by jump/branch_cmp
}

pub struct X86Emitter {
    asm: CodeAssembler,
    labels: Vec<LabelState>,
    error: Option<EmitError>,
}

// keep only first error
fn set_error(slot: &mut Option<EmitError>, e: EmitError) {
    if slot.is_none() {
        *slot = Some(e);
    }
}

// bridge iced result to trait methods
fn record(slot: &mut Option<EmitError>, r: Result<(), IcedError>) {
    if let Err(e) = r {
        set_error(slot, EmitError::Asm(e.to_string()));
    }
}

impl X86Emitter {
    fn cmp_flags(&mut self, lhs: Tmp, rhs: Src, w: OpWidth) -> Result<(), IcedError> {
        match rhs {
            Src::Tmp(s) => match w {
                OpWidth::W64 => self.asm.cmp(r64(lhs), r64(s)),
                OpWidth::W32 => self.asm.cmp(r32(lhs), r32(s)),
            },
            Src::Imm(i) => match w {
                // avoid truncation by copying to scratch register if needed
                OpWidth::W64 => match i32::try_from(i as i64) {
                    Ok(j) => self.asm.cmp(r64(lhs), j),
                    Err(_) => {
                        self.asm.mov(SCRATCH64, i)?;
                        self.asm.cmp(r64(lhs), SCRATCH64)
                    }
                },
                OpWidth::W32 => self.asm.cmp(r32(lhs), i as i32),
            },
        }
    }
}

impl Emitter for X86Emitter {
    const ARCH: &'static str = "x86_64";
    fn new() -> Self {
        Self {
            asm: CodeAssembler::new(64).expect("64 always valid bitness"),
            labels: Vec::new(),
            error: None,
        }
    }

    fn new_label(&mut self) -> Label {
        let id = self.labels.len() as u32;
        let iced = self.asm.create_label();
        self.labels.push(LabelState {
            iced,
            bound: false,
            referenced: false,
        });
        Label(id)
    }
    fn bind(&mut self, l: Label) {
        let state = &mut self.labels[l.0 as usize];
        if state.bound {
            set_error(&mut self.error, EmitError::RebindLabel(l));
            return;
        }
        state.bound = true;
        record(&mut self.error, self.asm.set_label(&mut state.iced));
    }

    /// ABI aware methods
    fn prologue(&mut self, _layout: &FrameLayout) {
        record(&mut self.error, self.asm.push(FRAME_BASE));
        record(&mut self.error, self.asm.mov(FRAME_BASE, ARG));
    }
    fn ret_exit(&mut self, exit_id: u32) {
        // rax / eax for return values
        record(&mut self.error, self.asm.mov(eax, exit_id)); // CompiledFn returns u32 so mov into eax for same result ith short form
        record(&mut self.error, self.asm.pop(FRAME_BASE));
        record(&mut self.error, self.asm.ret());
    }

    fn load_slot(&mut self, dst: Tmp, slot: FrameSlot, w: OpWidth) {
        let m = FRAME_BASE + slot.byte_offset();
        let r = match w {
            OpWidth::W64 => self.asm.mov(r64(dst), qword_ptr(m)),
            OpWidth::W32 => self.asm.mov(r32(dst), dword_ptr(m)),
        };
        record(&mut self.error, r)
    }
    fn store_slot(&mut self, slot: FrameSlot, src: Tmp, w: OpWidth) {
        let m = FRAME_BASE + slot.byte_offset();
        let r = match w {
            OpWidth::W64 => self.asm.mov(qword_ptr(m), r64(src)),
            OpWidth::W32 => self.asm.mov(dword_ptr(m), r32(src)),
        };
        record(&mut self.error, r)
    }

    // register-immediate move
    fn mov_imm(&mut self, dst: Tmp, imm: u64, w: OpWidth) {
        let r = match w {
            OpWidth::W64 => {
                if let Ok(u) = u32::try_from(imm) {
                    self.asm.mov(r32(dst), u) // if can be directly converted from u32 do it
                } else if let Ok(s) = i32::try_from(imm as i64) {
                    // if not, sign-extended imm32 into 64 bit reg
                    Instruction::with2(Code::Mov_rm64_imm32, Register::from(r64(dst)), s)
                        .and_then(|i| self.asm.add_instruction(i))
                } else {
                    self.asm.mov(r64(dst), imm) // or stick to 64 bit reg directly
                }
            }
            OpWidth::W32 => {
                debug_assert!(imm <= u32::MAX as u64);
                self.asm.mov(r32(dst), imm as u32)
            }
        };
        record(&mut self.error, r);
    }
    // register register move
    fn mov_rr(&mut self, dst: Tmp, src: Tmp, w: OpWidth) {
        if dst == src {
            return;
        }

        let r = match w {
            OpWidth::W64 => self.asm.mov(r64(dst), r64(src)),
            OpWidth::W32 => self.asm.mov(r32(dst), r32(src)),
        };
        record(&mut self.error, r);
    }
    // register register ALU op
    fn alu_rr(&mut self, op: AluOp, dst: Tmp, src: Tmp, w: OpWidth) {
        let r = match w {
            OpWidth::W64 => alu_rr64(&mut self.asm, op, r64(dst), r64(src)),
            OpWidth::W32 => alu_rr32(&mut self.asm, op, r32(dst), r32(src)),
        };
        record(&mut self.error, r);
    }
    // negate register
    fn neg(&mut self, dst: Tmp, w: OpWidth) {
        let r = match w {
            OpWidth::W64 => self.asm.neg(r64(dst)),
            OpWidth::W32 => self.asm.neg(r32(dst)),
        };
        record(&mut self.error, r);
    }

    /// ALU is 3 address but x86 is 2 address so we need to translate dst = lhs op rhs -> dst = dst op rhs
    /// so now ALU ops become mov dst, lhs then op dst, rhs
    /// but need to account for dst == rhs and dst != lhs as the mov would override rhs before its read
    fn alu(&mut self, op: AluOp, dst: Tmp, lhs: Tmp, rhs: Src, w: OpWidth) {
        match rhs {
            Src::Tmp(r) if r == dst && dst != lhs => match op {
                AluOp::Sub => {
                    // case: turn dst = lhs - rhs where dst == rhs
                    // into: dst = -rhs -> dst + lhs
                    // i.e. lhs - rhs
                    self.neg(dst, w);
                    self.alu_rr(AluOp::Add, dst, lhs, w);
                }
                _ => self.alu_rr(op, dst, lhs, w), // commutative so just do as normal
            },
            Src::Tmp(r) => {
                // just do normal move into dst then do op
                self.mov_rr(dst, lhs, w);
                self.alu_rr(op, dst, r, w);
            }
            Src::Imm(imm) => {
                self.mov_rr(dst, lhs, w);
                let r = match w {
                    OpWidth::W32 => alu_ri32(&mut self.asm, op, r32(dst), imm as i32),
                    OpWidth::W64 => match i32::try_from(imm as i64) {
                        // if imm fits in i32 use register-immediate op
                        Ok(s) => alu_ri64(&mut self.asm, op, r64(dst), s),
                        Err(_) => {
                            // too wide for imm32, go r11 and do a register-register op
                            record(&mut self.error, self.asm.mov(SCRATCH64, imm));
                            alu_rr64(&mut self.asm, op, r64(dst), SCRATCH64)
                        }
                    },
                };
                record(&mut self.error, r);
            }
        }
    }
    /// unop is a mov or not
    fn unop(&mut self, op: UnOp, dst: Tmp, src: Src, w: OpWidth) {
        match (op, src) {
            (UnOp::Mov, Src::Tmp(s)) => self.mov_rr(dst, s, w),
            (UnOp::Mov, Src::Imm(i)) => self.mov_imm(dst, i, w),
            (UnOp::Not, Src::Tmp(s)) => {
                self.mov_rr(dst, s, w);
                let r = match w {
                    OpWidth::W32 => self.asm.not(r32(dst)),
                    OpWidth::W64 => self.asm.not(r64(dst)),
                };
                record(&mut self.error, r);
            }
            (UnOp::Not, Src::Imm(i)) => {
                // figured out at compile time
                let nw = match w {
                    OpWidth::W32 => !i & 0xFFFF_FFFF,
                    OpWidth::W64 => !i,
                };
                self.mov_imm(dst, nw, w);
            }
        }
    }

    /// UMC wrap at declared width - noop when bits already natural for withd
    fn truncate_unsigned(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth) {
        let r = match w {
            OpWidth::W64 => {
                debug_assert!(bits <= 64);
                if bits > 64 {
                    return;
                }
                if bits == 64 || bits == 0 {
                    self.asm.nop()
                } else {
                    record(&mut self.error, self.asm.shl(r64(dst), 64 - bits));
                    self.asm.shr(r64(dst), 64 - bits)
                }
            }
            OpWidth::W32 => {
                debug_assert!(bits <= 32);
                if bits > 32 {
                    return;
                }
                if bits == 32 || bits == 0 {
                    self.asm.nop()
                } else {
                    record(&mut self.error, self.asm.shl(r32(dst), 32 - bits));
                    self.asm.shr(r32(dst), 32 - bits)
                }
            }
        };
        record(&mut self.error, r);
    }
    fn sign_extend(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth) {
        let r = match w {
            OpWidth::W64 => {
                record(&mut self.error, self.asm.shl(r64(dst), 64 - bits));
                self.asm.sar(r64(dst), 64 - bits)
            }
            OpWidth::W32 => {
                record(&mut self.error, self.asm.shl(r32(dst), 32 - bits));
                self.asm.sar(r32(dst), 32 - bits)
            }
        };
        record(&mut self.error, r);
    }

    fn set_cmp(&mut self, dst: Tmp, cond: CmpCond, lhs: Tmp, rhs: Src, w: OpWidth, s: Signedness) {
        let r = self.cmp_flags(lhs, rhs, w);
        record(&mut self.error, r);

        let a = &mut self.asm;
        let d = r8(dst);

        use CmpCond::*;
        use Signedness::*;
        let r = match (cond, s) {
            (Eq, _) => a.sete(d),
            (Ne, _) => a.setne(d),
            (Lt, Signed) => a.setl(d),
            (Lt, Unsigned) => a.setb(d),
            (Le, Signed) => a.setle(d),
            (Le, Unsigned) => a.setbe(d),
            (Gt, Signed) => a.setg(d),
            (Gt, Unsigned) => a.seta(d),
            (Ge, Signed) => a.setge(d),
            (Ge, Unsigned) => a.setae(d),
        };
        record(&mut self.error, r);
        record(&mut self.error, a.movzx(r32(dst), d));
    }
    fn branch_cmp(
        &mut self,
        cond: CmpCond,
        lhs: Tmp,
        rhs: Src,
        w: OpWidth,
        s: Signedness,
        target: Label,
    ) {
        let r = self.cmp_flags(lhs, rhs, w);
        record(&mut self.error, r);

        let st = &mut self.labels[target.0 as usize];
        st.referenced = true;
        let l = st.iced;

        let a = &mut self.asm;

        use CmpCond::*;
        use Signedness::*;
        let r = match (cond, s) {
            (Eq, _) => a.je(l),
            (Ne, _) => a.jne(l),
            (Lt, Signed) => a.jl(l),
            (Lt, Unsigned) => a.jb(l),
            (Le, Signed) => a.jle(l),
            (Le, Unsigned) => a.jbe(l),
            (Gt, Signed) => a.jg(l),
            (Gt, Unsigned) => a.ja(l),
            (Ge, Signed) => a.jge(l),
            (Ge, Unsigned) => a.jae(l),
        };
        record(&mut self.error, r);
    }
    fn jump(&mut self, target: Label) {
        let st = &mut self.labels[target.0 as usize];
        st.referenced = true;
        let l = st.iced;

        let r = self.asm.jmp(l);
        record(&mut self.error, r);
    }

    fn finish(mut self) -> Result<Vec<u8>, EmitError> {
        if let Some(e) = self.error.take() {
            return Err(e);
        }
        if let Some(i) = self.labels.iter().position(|s| s.referenced && !s.bound) {
            return Err(EmitError::UnboundLabel(Label(i as u32)));
        }
        self.asm
            .assemble(0)
            .map_err(|e| EmitError::Asm(e.to_string()))
    }
}

/// ALU 64bit Register-Register helper func
fn alu_rr64(
    a: &mut CodeAssembler,
    op: AluOp,
    d: AsmRegister64,
    s: AsmRegister64,
) -> Result<(), IcedError> {
    match op {
        AluOp::Add => a.add(d, s),
        AluOp::Sub => a.sub(d, s),
        AluOp::Mul => a.imul_2(d, s),
        AluOp::And => a.and(d, s),
        AluOp::Or => a.or(d, s),
        AluOp::Xor => a.xor(d, s),
    }
}

/// ALU 32bit Register-Register helper func
fn alu_rr32(
    a: &mut CodeAssembler,
    op: AluOp,
    d: AsmRegister32,
    s: AsmRegister32,
) -> Result<(), IcedError> {
    match op {
        AluOp::Add => a.add(d, s),
        AluOp::Sub => a.sub(d, s),
        AluOp::Mul => a.imul_2(d, s),
        AluOp::And => a.and(d, s),
        AluOp::Or => a.or(d, s),
        AluOp::Xor => a.xor(d, s),
    }
}

/// ALU 64bit Register-Immediate helper func
fn alu_ri64(a: &mut CodeAssembler, op: AluOp, d: AsmRegister64, imm: i32) -> Result<(), IcedError> {
    match op {
        AluOp::Add => a.add(d, imm),
        AluOp::Sub => a.sub(d, imm),
        AluOp::Mul => a.imul_3(d, d, imm),
        AluOp::And => a.and(d, imm),
        AluOp::Or => a.or(d, imm),
        AluOp::Xor => a.xor(d, imm),
    }
}

/// ALU 32bit Register-Immediate helper func
fn alu_ri32(a: &mut CodeAssembler, op: AluOp, d: AsmRegister32, imm: i32) -> Result<(), IcedError> {
    match op {
        AluOp::Add => a.add(d, imm),
        AluOp::Sub => a.sub(d, imm),
        AluOp::Mul => a.imul_3(d, d, imm),
        AluOp::And => a.and(d, imm),
        AluOp::Or => a.or(d, imm),
        AluOp::Xor => a.xor(d, imm),
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use iced_x86::{Decoder, DecoderOptions, Formatter, GasFormatter, Instruction};

    /// Decodses bytes and fails if invalid or trailing bytes don't form whole instruction
    fn disasm(bytes: &[u8]) -> Vec<String> {
        let mut decoder = Decoder::with_ip(64, bytes, 0, DecoderOptions::NONE);
        let mut formatter = GasFormatter::new();
        let mut instr = Instruction::default();
        let mut out = Vec::new();
        while decoder.can_decode() {
            decoder.decode_out(&mut instr);
            assert!(
                !instr.is_invalid(),
                "invalid instruction at {:#x}: {:02X?}",
                instr.ip(),
                bytes
            );
            let mut text = String::new();
            formatter.format(&instr, &mut text);
            out.push(text);
        }
        assert_eq!(decoder.position(), bytes.len(), "undecoded trailing bytes");
        out
    }

    #[test]
    fn empty_emitter_finishes() {
        assert_eq!(X86Emitter::new().finish(), Ok(vec![]));
    }

    #[test]
    fn rebinding_a_label_is_an_error() {
        let mut e = X86Emitter::new();
        let l = e.new_label();
        e.bind(l);
        // iced requires every label to be followed by instruction
        record(&mut e.error, e.asm.ret());
        e.bind(l);
        record(&mut e.error, e.asm.ret());
        assert_eq!(e.finish(), Err(EmitError::RebindLabel(l)));
    }

    #[test]
    fn label_at_end_of_code_is_rejected_by_iced() {
        let mut e = X86Emitter::new();
        let l = e.new_label();
        e.bind(l);
        assert!(matches!(e.finish(), Err(EmitError::Asm(m)) if m.contains("Unused label")));
    }

    #[test]
    fn disasm_round_trip() {
        let mut e = X86Emitter::new();
        record(&mut e.error, e.asm.push(FRAME_BASE));
        record(&mut e.error, e.asm.mov(FRAME_BASE, rcx));
        record(&mut e.error, e.asm.ret());
        let text = disasm(&e.finish().unwrap());
        assert_eq!(text, ["push %rbx", "mov %rcx,%rbx", "ret"])
    }

    #[test]
    fn mov_imm_picks_shortest_encoding() {
        let mut e = X86Emitter::new();
        e.mov_imm(Tmp::T0, 7, OpWidth::W64); // fits u32 -> zero-extending 32 bit mov
        e.mov_imm(Tmp::T1, u64::MAX, OpWidth::W64); // -1 -> sign-extended imm32
        e.mov_imm(Tmp::T2, 0x1_0000_0000, OpWidth::W64); // needs full imm64
        let bytes = e.finish().unwrap();
        assert_eq!(
            disasm(&bytes),
            [
                "mov $7,%eax",
                "mov $0xFFFFFFFFFFFFFFFF,%rcx",
                "movabs $0x100000000,%rdx"
            ]
        );
        // 5 + 7 + 10 bytes
        assert_eq!(bytes.len(), 22);
    }

    #[test]
    fn alu_sub_with_dst_aliasing_rhs_negates_first() {
        let mut e = X86Emitter::new();
        // T0 = T1 - T0
        e.alu(
            AluOp::Sub,
            Tmp::T0,
            Tmp::T1,
            Src::Tmp(Tmp::T0),
            OpWidth::W64,
        );
        assert_eq!(disasm(&e.finish().unwrap()), ["neg %rax", "add %rcx,%rax"]);
    }

    #[test]
    fn alu_wide_imm_goes_through_scratch() {
        let mut e = X86Emitter::new();
        e.alu(
            AluOp::Add,
            Tmp::T0,
            Tmp::T1,
            Src::Imm(0x1_0000_0000),
            OpWidth::W64,
        );
        assert_eq!(
            disasm(&e.finish().unwrap()),
            ["mov %rcx,%rax", "movabs $0x100000000,%r11", "add %r11,%rax"]
        );
    }

    #[test]
    fn not_of_imm_is_folded() {
        let mut e = X86Emitter::new();
        e.unop(UnOp::Not, Tmp::T0, Src::Imm(0xF0), OpWidth::W32);
        assert_eq!(disasm(&e.finish().unwrap()), ["mov $0xFFFFFF0F,%eax"]);
    }

    #[test]
    fn truncate_and_sign_extend_use_shift_pairs() {
        let mut e = X86Emitter::new();
        e.truncate_unsigned(Tmp::T0, 8, OpWidth::W64);
        e.truncate_unsigned(Tmp::T0, 32, OpWidth::W32); // natural width -> nop
        e.sign_extend(Tmp::T1, 16, OpWidth::W32);
        assert_eq!(
            disasm(&e.finish().unwrap()),
            [
                "shl $0x38,%rax",
                "shr $0x38,%rax",
                "nop",
                "shl $0x10,%ecx",
                "sar $0x10,%ecx"
            ]
        );
    }

    #[test]
    fn set_cmp_unsigned_uses_below() {
        let mut e = X86Emitter::new();
        e.set_cmp(
            Tmp::T2,
            CmpCond::Lt,
            Tmp::T0,
            Src::Imm(5),
            OpWidth::W64,
            Signedness::Unsigned,
        );
        assert_eq!(
            disasm(&e.finish().unwrap()),
            ["cmp $5,%rax", "setb %dl", "movzbl %dl,%edx"]
        );
    }

    #[test]
    fn branch_to_unbound_label_is_an_error() {
        let mut e = X86Emitter::new();
        let l = e.new_label();
        e.jump(l);
        assert_eq!(e.finish(), Err(EmitError::UnboundLabel(l)));
    }

    // emit a block, commit it to exec memory and run it on real frame
    #[test]
    fn emitted_block_runs_on_frame() {
        use crate::vm::compiler::exec_mem::ExecPage;
        use rustc_hash::FxHashMap;

        let layout = FrameLayout {
            slots: Vec::new(),
            lookup: FxHashMap::default(),
        };

        // slot2 = slot0 - slot1; exit 2 if slot0 < slot1 (signed) else exit 1
        let mut e = X86Emitter::new();
        let less = e.new_label();
        e.prologue(&layout);
        e.load_slot(Tmp::T0, FrameSlot::new(0), OpWidth::W64);
        e.load_slot(Tmp::T1, FrameSlot::new(1), OpWidth::W64);
        e.alu(
            AluOp::Sub,
            Tmp::T2,
            Tmp::T0,
            Src::Tmp(Tmp::T1),
            OpWidth::W64,
        );
        e.store_slot(FrameSlot::new(2), Tmp::T2, OpWidth::W64);
        e.branch_cmp(
            CmpCond::Lt,
            Tmp::T0,
            Src::Tmp(Tmp::T1),
            OpWidth::W64,
            Signedness::Signed,
            less,
        );
        e.ret_exit(1);
        e.bind(less);
        e.ret_exit(2);

        let page = ExecPage::commit(&e.finish().unwrap()).unwrap();

        let mut frame = [10u64, 3, 0];
        let exit = unsafe { page.as_fn()(frame.as_mut_ptr()) };
        assert_eq!((exit, frame), (1, [10, 3, 7]));

        let mut frame = [3u64, 10, 0];
        let exit = unsafe { page.as_fn()(frame.as_mut_ptr()) };
        assert_eq!((exit, frame), (2, [3, 10, (-7i64) as u64]));
    }
}
