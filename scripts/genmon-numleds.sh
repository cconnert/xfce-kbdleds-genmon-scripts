#!/bin/bash

## genmon script to display status of keyboard NUM LEDS
# modified version of kbdleds.sh script from https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start page

# icons (ON/OFF)
NUMON="<icon>numlock-enabled-symbolic</icon>"
NUMON+="<iconclick>xdotool key Num_Lock</iconclick>"
NUMOFF="<icon>numlock-disabled-symbolic</icon>"
NUMOFF+="<iconclick>xdotool key Num_Lock</iconclick>"

# icons (ON only)
#NUMON="<icon>numlock-enabled-symbolic</icon>"
#NUMOFF=""

# code
STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))
NUM=$([[ ${STATE[1]} == "on" ]] && echo "${NUMON}" || echo "${NUMOFF}")

# genmon output
echo "$NUM"
