#!/bin/bash

## genmon script to display status of keyboard CAPS LEDS
# modified version of kbdleds.sh script from https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start page

# icons (ON/OFF)
CAPSON="<icon>capslock-enabled-symbolic</icon>"
CAPSON+="<iconclick>xdotool key Caps_Lock</iconclick>"
CAPSOFF="<icon>capslock-disabled-symbolic</icon>"
CAPSOFF+="<iconclick>xdotool key Caps_Lock</iconclick>"

# icons (ON only)
#CAPSON="<icon>capslock-enabled-symbolic</icon>"
#CAPSOFF=""

# code
STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))
CAPS=$([[ ${STATE[0]} == "on" ]] && echo "${CAPSON}" || echo "${CAPSOFF}")

# genmon output
echo "$CAPS"
