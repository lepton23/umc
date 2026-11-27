mod aarch64;
mod x86_64;

use crate::vm::RegWidth;
use crate::vm::compiler::FrameSlot;
use crate::vm::memory::safe::SafeMemoryManager;

// where the block table lives inside the manager MEM_BASE points at
pub(crate) const TABLE_PTR_OFF: u32 = core::mem::offset_of!(SafeMemoryManager, table_ptr) as u32;
pub(crate) const TABLE_LEN_OFF: u32 = core::mem::offset_of!(SafeMemoryManager, table_len) as u32;
// emitters index the table with block << 4 and read len at +8
const _: () = assert!(size_of::<crate::vm::memory::safe::BlockEntry>() == 16);
// inline loads must agree with Serializable's from_le_bytes
const _: () = assert!(cfg!(target_endian = "little"));

#[cfg(target_arch = "aarch64")]
pub type NativeEmitter = aarch64::ArmEmitter;

#[cfg(target_arch = "x86_64")]
pub type NativeEmitter = x86_64::X86Emitter;

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Tmp {
    T0,
    T1,
    T2,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum FTmp {
    F0,
    F1,
    F2,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum OpWidth {
    W32,
    W64,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Src {
    Tmp(Tmp),
    Imm(u64),
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum AluOp {
    Add,
    Sub,
    Mul,
    Div,
    Mod,
    And,
    Or,
    Xor,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum FAluOp {
    Add,
    Sub,
    Mul,
    Div,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum UnOp {
    Mov,
    Not,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum CmpCond {
    Eq,
    Ne,
    Lt,
    Le,
    Gt,
    Ge,
}
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Signedness {
    Unsigned,
    Signed,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct Label(pub u32);

#[derive(Debug, PartialEq)]
pub enum EmitError {
    Unencodable { what: &'static str, value: u64 },
    UnboundLabel(Label),
    RebindLabel(Label),
    Asm(String), // for Iced errors that don't map easily
}

// argument to host call
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Arg {
    Tmp(Tmp),
    Imm(u64),
    Frame, // frame base
    Mem,   // memory manager passed to block
}

/// block structure, ABI, host calls
pub trait CoreEmitter: Sized {
    const ARCH: &'static str;
    fn new() -> Self;

    fn new_label(&mut self) -> Label;
    fn bind(&mut self, l: Label);

    /// ABI aware methods
    // rather than having a prologue which is called each time a block is called,
    // each blocks entry address will be its page base and use trampoline function
    fn trampoline(&mut self);
    fn ret_exit(&mut self, exit_id: u64);
    fn exit_slot(&mut self, slot: FrameSlot);
    fn exit_stub(&mut self);

    // call extern "C" fn at f, integer retrun lands in T0
    fn call_host(&mut self, f: usize, args: &[Arg]);

    fn jump(&mut self, target: Label);

    // jump to static page address of compiled block
    fn dispatch_static(&mut self, pc: u64, slot_addr: u64);
    // jump to address stored in slot
    fn dispatch_slot(&mut self, slot: FrameSlot, table_base: u64, len: u64);

    fn finish(self) -> Result<Vec<u8>, EmitError>;
}

/// integer slots, alu, cmps on Tmp
pub trait IntEmitter {
    fn load_slot(&mut self, dst: Tmp, slot: FrameSlot, w: OpWidth);
    fn store_slot(&mut self, slot: FrameSlot, src: Tmp, w: OpWidth);

    fn mov_imm(&mut self, dst: Tmp, imm: u64, w: OpWidth);
    fn mov_rr(&mut self, dst: Tmp, src: Tmp, w: OpWidth);
    fn alu_rr(&mut self, op: AluOp, dst: Tmp, src: Tmp, w: OpWidth, sign: Signedness);
    fn neg(&mut self, dst: Tmp, w: OpWidth);

    fn alu(&mut self, op: AluOp, dst: Tmp, lhs: Tmp, rhs: Src, w: OpWidth, sign: Signedness);
    fn unop(&mut self, op: UnOp, dst: Tmp, src: Src, w: OpWidth);

    fn lshift(&mut self, dst: Tmp, size: Src, w: OpWidth);
    fn l_rshift(&mut self, dst: Tmp, size: Src, w: OpWidth);
    fn a_rshift(&mut self, dst: Tmp, size: Src, w: OpWidth);

    /// UMC wrap at declared width - noop when bits already natural for withd
    fn truncate_unsigned(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth);
    fn sign_extend(&mut self, dst: Tmp, bits: RegWidth, w: OpWidth);

    fn set_cmp(&mut self, dst: Tmp, cond: CmpCond, lhs: Tmp, rhs: Src, w: OpWidth, s: Signedness);
    fn branch_cmp(
        &mut self,
        cond: CmpCond,
        lhs: Tmp,
        rhs: Src,
        w: OpWidth,
        s: Signedness,
        target: Label,
    );

    /// dst = bytes at (block, offset) in guest memory, zero or sign extended to 64
    /// jumps to fail on bad block, freed block or out of bounds, clobbers block
    fn load_mem(
        &mut self,
        dst: Tmp,
        block: Tmp,
        offset: Tmp,
        bytes: u8,
        s: Signedness,
        fail: Label,
    );
    /// low bytes of src to (block, offset), same checks as load_mem
    fn store_mem(&mut self, block: Tmp, offset: Tmp, src: Tmp, bytes: u8, fail: Label);
}

pub trait FloatEmitter {
    fn fload_slot(&mut self, dst: FTmp, slot: FrameSlot, w: OpWidth);
    fn fstore_slot(&mut self, slot: FrameSlot, src: FTmp, w: OpWidth);

    // dst = sqrt(dst)
    fn fsqrt(&mut self, dst: FTmp, w: OpWidth);

    // raw IEEE bits, f32 in low 32
    fn fmov_imm(&mut self, dst: FTmp, bits: u64, w: OpWidth);
    // dst = dst op rhs
    fn falu(&mut self, op: FAluOp, dst: FTmp, rhs: FTmp, w: OpWidth);
    fn fset_cmp(&mut self, dst: Tmp, cond: CmpCond, lhs: FTmp, rhs: FTmp, w: OpWidth);
}

/// everything lowering needs from backend
pub trait Emitter: CoreEmitter + IntEmitter + FloatEmitter {}
impl<T: CoreEmitter + IntEmitter + FloatEmitter> Emitter for T {}
