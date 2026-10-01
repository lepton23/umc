use crate::vm::compiler::emit::*;

use iced_x86::code_asm::*;

const FRAME_BASE: AsmRegister64 = rbx;
const SCRATCH64: AsmRegister64 = r11;

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
    fn prologue(&mut self, layout: &FrameLayout) {
        todo!()
    }
    fn ret_exit(&mut self, exit_id: u32) {
        todo!()
    }

    fn load_slot(&mut self, dst: Tmp, slot: FrameSlot, w: OpWidth) {
        todo!()
    }
    fn store_slot(&mut self, slot: FrameSlot, src: Tmp, w: OpWidth) {
        todo!()
    }
    fn mov_imm(&mut self, dst: Tmp, imm: u64, w: OpWidth) {
        todo!()
    }

    fn alu(&mut self, op: AluOp, dst: Tmp, lhs: Tmp, rhs: Src, w: OpWidth) {
        todo!()
    }
    fn unop(&mut self, op: UnOp, dst: Tmp, src: Src, w: OpWidth) {
        todo!()
    }

    /// UMC wrap at declared width - noop when bits already natural for withd
    fn truncate_unsigned(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth) {
        todo!()
    }
    fn sign_extend(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth) {
        todo!()
    }

    fn set_cmp(&mut self, dst: Tmp, cond: CmpCond, lhs: Tmp, rhs: Src, w: OpWidth, s: Signedness) {
        todo!()
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
        todo!()
    }
    fn jump(&mut self, target: Label) {
        todo!()
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
}
