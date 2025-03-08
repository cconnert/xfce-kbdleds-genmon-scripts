#!/bin/bash

## script to display caps status as notification
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly DIR_ICONS="$SCRIPT_DIR/../icons/hicolor/scalable/status"
# icons
CAPSON="${DIR_ICONS}/capslock-enabled-symbolic.svg"
CAPSOFF="${DIR_ICONS}/capslock-disabled-symbolic.svg"

# code
sleep 0.25s && STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))

# output
CAPS=$([[ ${STATE[0]} == "on" ]]  && notify-send "CAPS Status" -i $CAPSON "Caps ON" || notify-send "CAPS Status" -i $CAPSOFF "Caps OFF")
