#!/usr/bin/env bash
# Read-only sample every 2s. Ctrl-C to stop. Does NOT create artificial CPU load.
set -euo pipefail
command -v sensors >/dev/null || { echo 'Install lm-sensors: sudo apt install lm-sensors'; exit 1; }
while :; do
  date -Iseconds
  sensors | grep -E 'Core [0-9]+|temp[0-9]+:|Package id' || true
  sleep 2
done
