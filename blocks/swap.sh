#!/bin/sh
free -w | grep 'Swap' |  awk -F ' ' '{ printf "📀Swap: %.2f%", $3/$2*100 ; }'
