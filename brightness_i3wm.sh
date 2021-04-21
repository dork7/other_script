#!/bin/sh
 
# set brightness by running ' sh brightness_i3wm.sh 0.5 '

disp=$(xrandr -q | grep ' connected' | head -n 1 | cut -d ' ' -f1)
if [ "$1" > 0.1 ]
then
    xrandr --output $disp --brightness $1
    echo "Brightness of display - $disp is set to $1"
elif [ "$1" = '' ]
then
    xrandr --output $disp --brightness 0.5
    echo "Brightness of display - $disp is set to 0.5"
fi
