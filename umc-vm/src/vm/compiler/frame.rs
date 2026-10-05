use rustc_hash::FxHashMap;
use umc_model::{RegIndex, RegWidth};

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub struct FrameSlot(pub u16);

impl FrameSlot {
    pub const BYTES: i32 = 8;

    pub(crate) fn new(index: u16) -> Self {
        Self(index)
    }

    pub(crate) fn byte_offset(&self) -> i32 {
        self.0 as i32 * Self::BYTES
    }
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum SlotKey {
    Unsigned { index: RegIndex, width: RegWidth },
    // Signed, Float, etc.
}

#[derive(Debug, Clone)]
pub struct SlotInfo {
    pub key: SlotKey,
    pub live_in: bool, // read before written anywhere in block
    pub dirty: bool,   // written before in block
}

pub struct FrameLayout {
    pub slots: Vec<SlotInfo>,
    pub lookup: FxHashMap<SlotKey, FrameSlot>,
}

impl FrameLayout {
    fn slot_for(&mut self, key: SlotKey, live_in: bool) -> (FrameSlot, &mut SlotInfo) {
        let slots = &mut self.slots;
        let slot = *self.lookup.entry(key).or_insert_with(|| {
            slots.push(SlotInfo {
                key,
                live_in,
                dirty: false,
            });
            FrameSlot::new((slots.len() - 1) as u16)
        });
        (slot, &mut self.slots[slot.0 as usize])
    }

    pub fn read_slot(&mut self, key: SlotKey) -> FrameSlot {
        let (slot, info) = self.slot_for(key, true);
        if !info.dirty {
            info.live_in = true;
        }
        slot
    }

    pub fn write_slot(&mut self, key: SlotKey) -> FrameSlot {
        // marks slot as dirty
        let (slot, info) = self.slot_for(key, false);
        info.dirty = true;
        slot
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn layout() -> FrameLayout {
        FrameLayout {
            slots: Vec::new(),
            lookup: FxHashMap::default(),
        }
    }

    fn u(index: RegIndex, width: RegWidth) -> SlotKey {
        SlotKey::Unsigned { index, width }
    }

    #[test]
    fn same_key_reuses_slot_and_widths_are_distinct() {
        let mut l = layout();
        let a = l.read_slot(u(0, 64));
        let b = l.write_slot(u(0, 64));
        let c = l.read_slot(u(0, 32));
        assert_eq!(a, b);
        assert_ne!(a, c);
        assert_eq!((a.byte_offset(), c.byte_offset()), (0, 8));
        assert_eq!(l.slots.len(), 2);
    }

    #[test]
    fn read_before_write_is_live_in() {
        let mut l = layout();
        let s = l.read_slot(u(1, 64));
        l.write_slot(u(1, 64));
        let info = &l.slots[s.0 as usize];
        assert!(info.live_in && info.dirty);
    }

    #[test]
    fn write_before_read_is_not_live_in() {
        let mut l = layout();
        let s = l.write_slot(u(1, 64));
        l.read_slot(u(1, 64));
        let info = &l.slots[s.0 as usize];
        assert!(!info.live_in && info.dirty);
    }
}
