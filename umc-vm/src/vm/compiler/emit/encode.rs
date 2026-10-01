#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub(super) struct Reg(u8);
impl Reg {
    pub const RAX: Reg = Reg(0);
    pub const RCX: Reg = Reg(1);
    pub const RDX: Reg = Reg(2);
    pub const RBX: Reg = Reg(3);
    pub const RSP: Reg = Reg(4);
    pub const RBP: Reg = Reg(5);
    pub const RSI: Reg = Reg(6);
    pub const RDI: Reg = Reg(7);
    pub const R8: Reg = Reg(8);
    pub const R9: Reg = Reg(9);
    pub const R10: Reg = Reg(10);
    pub const R11: Reg = Reg(11);
    pub const R12: Reg = Reg(12);
    pub const R13: Reg = Reg(13);
    pub const R14: Reg = Reg(14);
    pub const R15: Reg = Reg(15);

    fn low3(self) -> u8 {
        self.0 % 8
    }

    fn ext(self) -> bool {
        self.0 > 7
    }
}

#[derive(Clone, Copy, PartialEq, Eq, Debug)]
enum R {
    Code(u8),
    Reg(Reg),
}

#[derive(Clone, Copy, PartialEq, Eq, Debug)]
enum Rm {
    Reg(Reg),
    Mem { base: Reg, disp: i32 },
}

/*
    Binary structure of x86_64 output

    [ REX? ][OPCODE Bs][ModR/M][SIB][Displacement or Immediate]
    0100WRXB[1-3 bytes][1 byte][1 B][8bit, 16bit, 32bit, 64bit]
*/

pub(super) fn encode(w: bool, opcode: &[u8], reg_field: R, rm: Rm) {
    let r: bool = match reg_field(reg) {
        Reg(reg) => reg.ext(),
        _ => false,
    };

    let m: u8 = match rm() {
        Reg(reg) => 0b11,
        Mem { reg, disp } => {
            if disp == 0 {
                0b00
            } else if disp < 8 {
                0b01
            } else {
                0b10
            }
        }
    };
}
