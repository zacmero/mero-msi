#!/usr/bin/env bash
# Read-only collection of USB / camera / Bluetooth / DMI facts. Does not change device settings.
set -u
stamp=$(date +%Y%m%d-%H%M%S)
out="${1:-evidence/hardware-$stamp.txt}"
mkdir -p "$(dirname "$out")"
{
  printf '=== capture UTC ===\n'; date -u -Iseconds
  printf '\n=== uname ===\n'; uname -a
  printf '\n=== distro ===\n'; cat /etc/os-release 2>/dev/null
  printf '\n=== PCI ===\n'; lspci -nnk 2>&1
  printf '\n=== USB (all) ===\n'; lsusb 2>&1
  printf '\n=== USB tree ===\n'; lsusb -t 2>&1
  printf '\n=== rfkill ===\n'; rfkill list 2>&1
  printf '\n=== hci ===\n'; command -v bluetoothctl >/dev/null && bluetoothctl list 2>&1
  printf '\n=== devices ===\n'; ls -l /dev/video* 2>&1
  printf '\n=== V4L2 ===\n'; command -v v4l2-ctl >/dev/null && v4l2-ctl --list-devices 2>&1
  printf '\n=== sensors ===\n'; command -v sensors >/dev/null && sensors 2>&1
  printf '\n=== kernel messages (unprivileged; may be restricted) ===\n'; dmesg 2>&1 | tail -n 180
  printf '\n=== modules ===\n'; lsmod | grep -Ei 'uvcvideo|btusb|bluetooth|msi[-_]' || true
} > "$out"
echo "Saved: $out"
echo 'Review before sharing: identifiers, MACs, usernames, and serial numbers may appear.'
