# Cooling restoration — successful

## Initial symptoms

- CPU repeatedly reached **about 95 °C**, fan ran at high RPM often; visible intake blades were dusty, but not enough alone to explain the symptom.
- Laptop contains a single copper heatpipe to a fin stack, with centrifugal blower. Heatpipe feeling hot indicates heat transfer **somewhere** along the assembly, but is **not** proof of good CPU contact or clean fin stack.
- CPU was a removable i5-480M PGA package, and original dried thermal paste caused it to **stick to the heatsink** during removal. Handle pins by substrate edges and unlock zero-insertion-force cam correctly.

## Service record (October 6–7, 2026)

1. Laptop powered off and battery/AC disconnected; heatpipe/fan assembly removed.
2. CPU was stuck to contact plate and came out with heatsink; photographed exposed pins, then separated carefully and reinstalled in the ZIF socket.
3. CPU top was cleaned using isopropyl alcohol and gentle material; motherboard and pins kept dry.
4. CPU has **two separate exposed silicon dies** (not a large integral heat-spreader). Both received a small amount of fresh thermal compound with full thin-film coverage. Excess paste was removed after photo inspection.
5. Heatsink contact surface cleaned, radiator/fan inspected/cleaned, heatsink mounted evenly, fan connector plugged in.
6. Laptop powered up successfully and fan operation improved dramatically.

## Recorded temperatures / outcome

| State | Observation | Evidence |
| --- | --- | --- |
| Before | Frequently about **95 °C**, fan frequently loud | Owner observation |
| After, low activity | `Core 0 +52 °C`, `Core 2 +53 °C`, ACPI `temp1 +56 °C`; ACPI package sensor read around +59 °C in screenshot | [`IMG_DA72...jpeg`](../assets/photos/IMG_DA72EA58-9FEA-475C-9146-DCDC3D99ACDA.jpeg) |
| After, YouTube + btop | Reported **below 70 °C**, fan significantly quieter, occasional increase in speed | Owner observation |

The screenshot's **`high = 95°C`** and **`crit = 105°C`** are warning thresholds, **not current readings**.

## Materials / cautions

- GELID-branded thermal compound in `IMG_D6D...jpeg`; package marketing claimed approximately 14.8 W/(m·K), not independently measured.
- Included grease cleanser + small finger cot. Finger cot is a protective fingertip cover for spreading; high-purity IPA on lint-free wipes is a good cleaning alternative.
- On bare dies do not use a massive desktop-style paste blob or excessive force; tighten the heatsink evenly without twisting against the silicon.
- **No liquid metal**. Avoid touching thermal pads or changing their thickness if encountered in future service.
- Further verification: sample idle/stable-load temperatures and check the exhaust airflow, but the repair is already functionally confirmed.
