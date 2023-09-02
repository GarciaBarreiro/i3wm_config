#!/bin/bash

i3status -c ~/.config/i3/i3status.conf | while :
do
        read line
        LG=$(fcitx5-remote -n) 
        echo "LG: $LG | $line" || exit 1
done
