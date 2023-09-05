#!/bin/bash

i3status -c ~/.config/i3/i3status.conf | while :
do
        read line
        LG=$(fcitx5-remote -n) 
        VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '[0-9]*%' | head -n 1) # don't ask
        echo "VOL: $VOL | LG: $LG | $line" || exit 1
done
