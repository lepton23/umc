#![cfg(all(target_os = "linux", not(any(target_arch = "arm", target_arch = "aarch64"))))]
pub mod llvm;
