# MSI MS-14531 / MS-14541 boardview

Supplied directly by the owner in the hardware investigation.

- Source ZIP: `MSI MS-14531_MS-14541 boardview.zip` (single file).
- Extracted: `MSI MS-14531_MS-14541 boardview.brd` (~591 KB).
- Neither is a PCB schematic PDF. They are physical boardview data; rendering requires compatible boardview viewer/parser.
- Despite the `.brd` extension, this input is encoded and cannot be interpreted by ordinary `grep` for designators. Lack of literal `J30` in bytes is **not enough** to conclude absent J30.

The related MS-1453 / MS-1454 full schematic is linked from `docs/sources.md`, not distributed in this repository. Do not confuse **MS-1452** stock reference image with the **MS-1454** chassis.
