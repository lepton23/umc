mod encode;
mod x86_64;

/// STUB DEFINITION
#[derive(Debug, PartialEq)]
pub enum EmitError {
    BadEmit { pc: usize },
}
