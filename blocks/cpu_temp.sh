#!/bin/sh

ICONn="💣" # icon for normal temperatures
ICONc="💣" # icon for critical temperatures

crit=65 # critical temperature

read -r temp </sys/class/thermal/thermal_zone0/temp
temp=${temp%???}

if [ "$temp" -lt "$crit" ] ; then
    printf "$ICONn %s°C" "$temp"
else
    notify-send -u critical "Critical: CPU heating up"
    printf "$ICONc%s°C" "$temp"
fi
