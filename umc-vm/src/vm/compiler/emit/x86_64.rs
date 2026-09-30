use crate::vm::compiler::emit::*;

pub struct X86Emitter {}

impl Emitter for X86Emitter {
    const ARCH: &'static str = "x86_64";
    fn new() -> Self {
        todo!()
    }

    fn new_label(&mut self) -> Label {
        todo!()
    }
    fn bind(&mut self, l: Label) {
        todo!()
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

    fn finish(self) -> Result<Vec<u8>, EmitError> {
        todo!()
    }
}
