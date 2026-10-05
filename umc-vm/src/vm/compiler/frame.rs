use rustc_hash::FxHashMap;
use umc_model::{RegIndex, RegWidth};

#[derive(Clone, Copy, PartialEq, Eq, Hash)]
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

#[derive(Clone, Copy, PartialEq, Eq, Hash)]
pub enum SlotKey {
    Unsigned { index: RegIndex, width: RegWidth },
    // Signed, Float, etc.
}

pub struct SlotInfo {
    pub key: SlotKey,
    pub live_in: bool, // read before written anywhere in block
    pub dirty: bool,   // written before in block
}

pub struct FrameLayout {
    slots: Vec<SlotInfo>,
    lookup: FxHashMap<SlotKey, FrameSlot>,
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
