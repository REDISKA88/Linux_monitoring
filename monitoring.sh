#!/bin/sh
ram=$(free -m | awk 'NR==2{printf"%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
hdd=$(df -h | awk '$NF=="/"{printf"%d/%dGB   (%s)\n", $3, $2, $5}')
cpuload=$( 
wall -n "RAM usage: $ram 
HDD usage: $hdd
CPU  load: $cpuload 
"

