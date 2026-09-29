#[cfg(unix)]
mod posix;

#[cfg(windows)]
mod win;

/// STUB DEFINITION
#[derive(Debug, PartialEq)]
pub enum ExecMemError {
    BadPage { addr: usize },
}

/// STUB DEFINITION
pub struct ExecPage {}
