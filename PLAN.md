# Implementation Plan: Time-Jumping Investigation Mechanics

## 1. Time & Scenario Management
- [ ] **Global Time Manager (Singleton):**
    - Track `current_day` and `current_hour`.
    - Signal `time_changed` to update NPCs and environment.
- [ ] **Time Jump UI:**
    - Menu to select available time slots (e.g., "Day 1 - 09:00", "Day 1 - 12:00").
    - Logic to reset/reposition NPCs based on the selected jump.

## 2. NPC Framework
- [ ] **NPC Base Class:**
    - Property for `schedule` (a Dictionary mapping time/day to positions and states).
    - Logic to update `global_position` and `current_dialogue` on `time_changed`.
- [ ] **NPC Inspection:**
    - `items_carried` list for each NPC state.
    - Interaction prompt to view items.

## 3. Vision & Proximity System
- [ ] **Color Zone Shader:**
    - Screen-space shader or canvas layer to desaturate the world.
    - Masking system centered on NPCs (and potentially the player) to reveal color.
- [ ] **Proximity Dialogue Snippets:**
    - Dialogue UI that only appears/updates when the player is within the NPC's color zone.
- [ ] **Action Visibility:**
    - NPCs only play specific "incriminating" animations if the player is close enough to witness them in the color zone.

## 4. Investigation Tools
- [ ] **Journal System:**
    - Categories: NPCs, Dialogue Snippets, Items, Observed Actions.
    - Auto-logging when the player interacts or witnesses an event.
- [ ] **Report Menu:**
    - Form-based UI to match:
        - Name -> Face.
        - NPC -> Action.
        - NPC -> Motive.
    - Scoring logic based on correct entries.

## 5. Environment & Polish
- [ ] **Dynamic Environment:** Update lighting/objects based on time of day.
- [ ] **Visual Feedback:** Indicators for when new information is added to the journal.
