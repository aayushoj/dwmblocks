#!/bin/sh 
df -h | grep 'dev/sda3' | awk -F' ' '{printf "🏠Disk: %s", $5}'

