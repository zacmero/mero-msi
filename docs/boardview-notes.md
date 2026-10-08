# Boardview and schematics — revision-aware map

## Provided assets

- [`MSI MS-14531_MS-14541 boardview.zip`](../boardview/MSI%20MS-14531_MS-14541%20boardview.zip): uploaded by owner, one `.brd` file dated March 25, 2013; 146,795-byte ZIP.
- [`MSI MS-14531_MS-14541 boardview.brd`](../boardview/MSI%20MS-14531_MS-14541%20boardview.brd): extracted 591,378-byte boardview. The file has an obfuscated/encoded-looking binary-text encoding; `grep J30` on raw bytes will **not** establish absence. Use an appropriate boardview reader or decoder.
- [`boardview_connectors_location.png`](../assets/annotated/boardview_connectors_location.png): reconstructed placement image from earlier boardview investigation. *Treat as provisional until revision and orientation are checked*.

## Connector facts

| Designator | Description | Confidence |
| --- | --- | --- |
| `CON15` | Half Mini PCIe socket with Ralink WLAN fitted | Visible in photographs; pin-net claims need recheck |
| `CON11` | Tall cream-coloured header next to unpopulated CON17; previously inferred LPC diagnostic | Provisional schematic/visual ID |
| `CON17` | 10-pad SMD footprint **visibly empty** beside CON11 | Confirmed photo; function traced from prior boardview parsing |
| `J29` | speaker connector by Wi-Fi card | Per MS-1453/1454 schematic |
| `CON12` | webcam/LED-associated connector near fan and RAM | Per MS-1453/1454 schematic, verify before disconnecting |
| `J30` | Separate 8-pin Bluetooth header on **schematic**, not found in previous **boardview component list** | Do not confuse schematic designation with an actual installed part |

Reference signal names previously recorded: `BT_PWR_ON`, `LED_BLUETOOTH#`, `USB_PP2`, `USB_PN2`, `USB_PP6`, `USB_PN6`, `WLAN_PWRON`, `+3VRUN`, `GND`. Signal existence in a design file does **not** imply the module is populated.

## Revision traps

- The user's bottom label: commercial device **CR420 MX / MS-1454**.
- Uploaded BRD: **MS-14531/MS-14541** family (likely relevant, but verify actual printed board revision).
- Earlier similar photo: **MS-1452**—different CPU/memory generation and connector numbering, not an exact substitute.
- Another stock photo: **MS-14531 VER:1.2** but small/low-quality crop; physical J30 location not proven.

## Further reverse-engineering tasks

- Export real board component coordinates and annotated **top/bottom** view (not just a bounding-box sketch); independently check `CON17`, `CON15`, `J30`, `CON12`.
- Trace separate Bluetooth +3V rail and EC enable line. Confirm which connectors are actually populated on THIS laptop.
- Search for physically hidden Bluetooth module/cable in palm-rest region only if evidence establishes a likely location.
- Keep original BRD immutable; add derived CSV/vector annotations into separate folders.
