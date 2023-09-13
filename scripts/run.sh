#!/bin/sh

export DWM=$HOME/.config/chadwm/
xrdb merge ~/.config/chadwm/.Xresources
xbacklight -set 10 &
feh --bg-fill ~/Pictures/wallpaper/*.* &
xset r rate 200 50 &
~/.dwm/.bin/start_picom.sh &

~/.config/chadwm/scripts/bar.sh &
while type chadwm >/dev/null; do chadwm && continue || break; done
