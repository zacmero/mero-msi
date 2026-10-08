# Investigation timeline

## Early October 2026 — CPU overheating

- Initial service-bay photographs showed MSI CR420MX/MS-1454, Ralink RT3090 WLAN, removable i5 CPU, old SUNON centrifugal blower and heatpipe. CPU routinely hit **95 °C** under previous workload.
- Thermal paste arrived with wipe and finger cot; during heatsink removal original compound had bonded CPU to plate, extracting the CPU from its ZIF socket.
- CPU pins were inspected, chip correctly reseated and locked, two exposed dies cleaned with IPA, then thin thermal film applied to both dies.
- Reassembled laptop successfully. Reported ~52–56 °C idle / light load and below 70 °C with YouTube+btop; fan substantially quieter. **Repair #1 completed.**

## Bluetooth investigation — still open

- Bluetooth had operated on EndeavourOS previously; on Mint it no longer appears in USB discovery even though radio indicator responds. Owner and multiple coding agents reviewed drivers, firmware and old OS configuration extensively; no reliable software correction found.
- Hardware photos established WLAN board was **Ralink RT3090 Wi-Fi-only**, not combined Bluetooth. The yellow-green board was identified as card reader.
- MS-1453/1454 schematic indicated separate optional Bluetooth module `MS-3801`, header `J30`, USB data and `BT_PWR_ON`.
- Comparison stock motherboard photo MS-1452 initially appeared visually similar but later recognized as electrically different revision; no reliable BT position could be transferred.
- Owner supplied original MSI MS-14531/MS-14541 `.brd` ZIP; prior extraction found Bluetooth-related nets but no J30 component entry.
- Connector hunt checked `J29`, `CON12`, a long cream header and a 10-contact footprint `CON17`. Clear photo confirms `CON17` is **unpopulated**. Original Bluetooth module physical location **unknown**.

## Next planned

- Camera USB detection via `Fn+F6` and V4L2.
- Archive the owner's existing Linux diagnostics and verify revision-specific boardview coordinate/net mapping without dismantling the motherboard.
- Consider drop-in combo Mini PCIe or USB dongle only as a workaround if original Bluetooth cannot be recovered.
