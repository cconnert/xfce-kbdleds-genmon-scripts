#!/bin/bash

## genmon script to display status of keyboard NUM LEDS
# modified version of kbdleds.sh script from https://docs.xfce.org/panel-plugins/xfce4-genmon-plugin/start page

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
readonly DIR_ICONS="$SCRIPT_DIR/../icons/hicolor/scalable/status"
# icons (ON/OFF)
ON="<img>${DIR_ICONS}/numlock-enabled-symbolic.svg</img>"
ON+="<click>xdotool key Num_Lock</click>"
ON+="<tool>Num-Lock indicator</tool>"
OFF="<img>${DIR_ICONS}/numlock-disabled-symbolic.svg</img>"
OFF+="<click>xdotool key Num_Lock</click>"
OFF+="<tool>Num-Lock indicator</tool>"

# code
STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))
NUM=$([[ ${STATE[1]} == "on" ]] && echo "${ON}" || echo "${OFF}")

# genmon output
echo "$NUM"
