#!/bin/bash

## script to display caps status as notification
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly DIR_ICONS="$SCRIPT_DIR/../icons/hicolor/scalable/status"
# icons
ON="${DIR_ICONS}/numlock-enabled-symbolic.svg"
OFF="${DIR_ICONS}/numlock-disabled-symbolic.svg"

# code
sleep 0.25s && STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))

# output
NUM=$([[ ${STATE[1]} == "on" ]]  && notify-send "NUM Status" -i $ON "Num ON" || notify-send "NUM Status" -i $OFF "Num OFF")
