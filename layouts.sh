#!/bin/bash
# this isn't the best way to do this

list=$( ls ~/.screenlayout/ )

echo "Layouts:"

i=0
for layout in $list; do
    echo -e "  $i\t$layout"
    let i++
done
let i--

read -p "Enter layout num: " num

list=($( ls ~/.screenlayout/ ))
if [ -n "$num" ] && [ "$num" -eq "$num" ] && [ "$num" -ge 0 ] 2>/dev/null; then
    exec "~/.screenlayout/${list[$num]}"
else
    echo "ERROR"
fi

# after changing layout, feh stops displaying bg properly
exec feh --bg-fill ~/Pictures/great-wave-off-kanagawa.jpeg

exit
