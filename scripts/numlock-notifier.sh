#!/bin/bash

## script to display caps status as notification

# icons
NUMON=numlock-enabled-symbolic
NUMOFF=numlock-disabled-symbolic

# code
sleep 0.25s && STATE=($(xset q | grep Caps\ Lock | awk '{print $4" "$8" "$12}'))

# output
NUM=$([[ ${STATE[1]} == "on" ]]  && notify-send "NUM Status" -i $NUMON "Num ON" || notify-send "NUM Status" -i $NUMOFF "Num OFF")
