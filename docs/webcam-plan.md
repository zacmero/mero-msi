# Webcam expedition — next experiment

This is the next hardware/software task. **Do not assume the webcam is broken just because Bluetooth is absent**; they can be independently powered USB peripherals. MSI's CR420MX product specification lists a **1.3 megapixel webcam**. The MS-1454 owner manual explicitly prescribes **Fn+F6** to toggle camera power (Fn+F8 Wi-Fi, Fn+F9 Bluetooth).

## Non-destructive Linux Mint test

1. Run `./scripts/collect-hardware.sh` (collects USB and camera data; no configuration changes).
2. On desktop, press `Fn+F6` once; watch for webcam status indicator near screen bezel.
3. Compare USB enumeration **before and after** Fn+F6: `lsusb` and `lsusb -t`.
4. Check devices: `ls /dev/video* 2>/dev/null` and `v4l2-ctl --list-devices` (install `v4l-utils` if absent).
5. Check `sudo dmesg -T | grep -iE 'uvc|video|camera|usb'` for initialization failures; capture raw logs with dates.
6. If video node appears: test with `ffplay -f video4linux2 -i /dev/video0` or the Linux Mint Camera/Cheese application; select actual device, don't assume `/dev/video0` belongs to webcam.

Note: old MSI firmware might use EC power-gating. USB absence with webcam toggled OFF is expected; repeat after toggle to confirm. **Don't force-load random proprietary camera drivers or short connectors.**

Document the camera's USB VID:PID, image resolution, supported formats and sensor if found; append results here.
