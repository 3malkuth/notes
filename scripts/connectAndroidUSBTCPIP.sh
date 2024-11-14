#!/bin/bash

# Direct usb cable connection to PC
adb kill-server
adb usb
adb shell ls
adb tcpip 5555

