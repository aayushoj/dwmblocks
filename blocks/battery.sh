#!/bin/sh
ICON="🔋"
read -r capacity </sys/class/power_supply/BAT1/capacity
printf "$ICON%s%%" "$capacity"
