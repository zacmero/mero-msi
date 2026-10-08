# Hardware inventory and identification

## Device identity

- Bottom plate: **MSI CR420 MX** notebook, **MS-1454**, produced in Brazil. Label states **19 V / 3.42 A** DC input, center-positive adapter icon. See `IMG_A05...jpeg` (publicly redacted Microsoft COA).
- MSI [CR420MX](https://www.msi.com/Laptop/CR420MX/Specification) published general specs: HM55 chipset, 14-inch 1366×768, 1.3-megapixel webcam, two memory slots for DDR3-800/1066, nominal maximum 4 GB, SATA 2.5-inch drive and 802.11b/g/n radio. Actual regional equipment may differ.
- Photographed CPU top reads **Intel Core i5-480M** (Arrandale, removable Socket G1/rPGA988A, two exposed dies). Treat those exposed die surfaces as fragile.
- Two installed SO-DIMM sticks: white label **SMART SH564568FH8NWPHSFG, 2GB 2Rx8 PC3-10600S** each; observed total **4 GB**.
- WLAN mini card: **Ralink RT3090**, **MS-6891** board, label FCC ID **VQF-RT3090-1T1R**; gray/black coaxial antenna leads marked ANT1/ANT2. **Not an RT3090BC4 combo card.**
- Blower motor photograph: SUNON MagLev 5 V fan label visible. Exact fan part number should be transcribed from high-resolution original rather than guessed from thumbnails.
- Yellow-green board at SD-reader slot was identified by the owner as **SD card reader board**, not Bluetooth.
- Power rail near CPU: multiple chokes/MOSFETs/capacitors under the heatpipe; **do not touch or probe while powered**, especially at the connector bank.

## Confirmed keys (MS-1454 owner manual)

| Hotkey | Function |
| --- | --- |
| `Fn+F6` | Webcam toggle |
| `Fn+F8` | Wi-Fi |
| `Fn+F9` | Bluetooth radio command/indicator |

An illuminated Bluetooth LED proves only the EC/indicator responded: it **does not prove USB enumeration** of the radio.

## Unknowns

- Exact motherboard revision silk-screen and verified physical location of original Bluetooth module.
- BIOS and EC firmware versions (await `dmidecode`/`fwupdmgr`/BIOS setup information).
- Boot storage exact model/SMART state, webcam USB VID:PID, Bluetooth USB VID:PID from previously working Arch installation.
- Exact revision compatibility of replacement Half Mini PCIe card; avoid promising drop-in compatibility before confirming slot USB wiring and BIOS/EC behavior.
