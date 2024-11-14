#!/bin/bash

# Now add HDMI dummy connection
# adb connect "$1":5555
adb connect 192.168.0.18:5555
scrcpy --display 2 --bit-rate 32M --window-title 'DexOnLinux' --turn-screen-off --stay-awake
