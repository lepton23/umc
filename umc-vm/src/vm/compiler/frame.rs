/// STUB DEFINITIONS
pub struct FrameLayout {}
pub struct FrameSlot(u16);

impl FrameSlot {
    pub(crate) fn byte_offset(&self) -> i32 {
        self.0 as i32 * 8
    }

    #[cfg(test)]
    pub(crate) fn new(index: u16) -> Self {
        Self(index)
    }
}
