#!/bin/bash

## genmon script to display status of keyboard CAPS LEDS
# modified version of kbdleds.sh script from https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start page
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly DIR_ICONS="$SCRIPT_DIR/../icons/hicolor/scalable/status"
# icons (ON/OFF)
CAPSON="<img>${DIR_ICONS}/capslock-enabled-symbolic.svg</img>"
CAPSON+="<click>xdotool key Caps_Lock</click>"
CAPSON+="<tool>Caps-Lock indicator</tool>"
CAPSOFF="<img>${DIR_ICONS}/capslock-disabled-symbolic.svg</img>"
CAPSOFF+="<click>xdotool key Caps_Lock</click>"
CAPSOFF+="<tool>Caps-Lock indicator</tool>"

# icons (ON only)
#CAPSON="<icon>capslock-enabled-symbolic</icon>"
#CAPSOFF=""

# code
STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))
CAPS=$([[ ${STATE[0]} == "on" ]] && echo "${CAPSON}" || echo "${CAPSOFF}")

# genmon output
echo "$CAPS"
