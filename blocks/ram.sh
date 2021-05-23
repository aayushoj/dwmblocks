#!/bin/sh
free -w | grep 'Mem' |  awk -F ' ' '{ printf "📀RAM: %.2f%", $3/$2*100 ; }'
