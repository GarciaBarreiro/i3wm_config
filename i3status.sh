#!/bin/bash

i3status -c ~/.config/i3/i3status.conf | while :
do
        read line
        LG=$(setxkbmap -query | awk '/layout/{print $2}') 
        echo "LG: $LG | $line" || exit 1
done
