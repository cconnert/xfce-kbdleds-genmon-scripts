#!/bin/bash

## script to display caps status as notification

# icons
CAPSON=capslock-enabled-symbolic
CAPSOFF=capslock-disabled-symbolic

# code
sleep 0.25s && STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))

# output
CAPS=$([[ ${STATE[0]} == "on" ]]  && notify-send "CAPS Status" -i $CAPSON "Caps ON" || notify-send "CAPS Status" -i $CAPSOFF "Caps OFF")
