#!/bin/sh

export DWM=$HOME/.config/chadwm
xrdb merge ~/.config/chadwm/.Xresources
xbacklight -set 100 &
feh --bg-fill ~/Pictures/wallpaper/*.* &
xset r rate 200 50 &
~/.dwm/.bin/start_picom.sh &

~/.config/chadwm/scripts/bar.sh &
while type ~/.config/chadwm/chadwm/dwm >/dev/null; do ~/.config/chadwm/chadwm/dwm && continue || break; done
