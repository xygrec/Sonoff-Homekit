#!/bin/bash

SONOFF_PORT="/dev/cu.usbserial-AG0K4XOT"

esptool.py \
            -p $SONOFF_PORT \
            erase_flash
