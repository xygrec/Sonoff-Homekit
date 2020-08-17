#!/bin/bash

SONOFF_PORT="/dev/cu.usbserial-AG0K4XOT"

esptool.py \
            -p $SONOFF_PORT \
            --baud 115200 \
            write_flash \
            -fs 1MB \
            -fm dout \
            -ff 40m \
            0x0 ./firmware/rboot.bin \
            0x1000 ./firmware/blank_config.bin \
            0x2000 ./firmware/sonoff_andrew_v2.bin
