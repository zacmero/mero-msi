# Source links and provenance

References are links rather than mirrors of other people's proprietary manuals/schematics. Access, content and availability can change. **Do not blindly combine different motherboard revisions.**

## Manufacturer and model

1. MSI [CR420MX official specifications](https://www.msi.com/Laptop/CR420MX/Specification) — Intel HM55, original platform specs, 1.3 M webcam, 14-inch screen.
2. MSI [CR420 official specifications](https://www.msi.com/Laptop/CR420/Specification) — older product series, documents optional Bluetooth 2.1+EDR. Regional variants differ.
3. [MS-1454 CR420MX owner manual](https://manualzz.com/doc/61897866/msi-ms-1454-cr420mx-owner-s-manual) — Fn+F6 webcam, Fn+F8 WLAN, Fn+F9 Bluetooth; speaker/indicator documentation.
4. [MSI EC reset instructions](https://www.msi.com/support/technical_details/NB_EC_RESET) — generic EC state reset, not proof of original Bluetooth issue.
5. [MSI camera quick guide](https://us.msi.com/support/technical_details/NB_Camera_On_Off) — generic modern support instructions; use model manual primarily.

## Schematics, boardviews, photos and IDs

6. [MS-1453 switchable / MS-1454 UMA schematic/boardview thread](https://www.repairlap.com/threads/msi-ms-1453-switchable-ms-1454-uma-r0a-boardview-schematic.7355/) — includes related BRD ZIP and schematic listing.
7. [MS-1453 / MS-1454 schematic on Scribd](https://www.scribd.com/document/423817896/CR420) — alleged J30 Bluetooth header, MS-3801 module, related nets. Verify sheet before touching real hardware.
8. [Ralink RT3090 FCC filing](https://fccid.io/VQFRT30901T1R) — Wi-Fi-only model with exact FCC identifier from laptop card.
9. [MSI / CSR Bluetooth MS-3801 / BSMAN1 external FCC photographs](https://fccid.io/PIWBSMAN/External-Photos/AN1-external-photos-1135302.pdf) — example daughterboard form factor; not necessarily what user's laptop contains.
10. [Intel Core i5-480M overview](https://chipswiki.org/Intel/core_i5/i5-480m) — historical specifications, socket and 35W TDP, verify primary Intel data before quantitative claims.

## Primary evidence

- User's own photos: [`assets/photos/`](../assets/photos/) and photo index.
- User-supplied BRD archive: [`boardview/`](../boardview/).
- Firsthand owner observations (temperature before/after, prior Endeavour Bluetooth, current Mint state).
- No current USB log files from the user's terminal are present in this archive; do not manufacture outputs.

## Third-party rights

Third-party boardviews, datasheets, schematics and photographs may be subject to copyright or publication restrictions. This repository contains only owner-supplied boardview archive plus linked documentation, with provenance recorded. Review rights before redistributing further.
