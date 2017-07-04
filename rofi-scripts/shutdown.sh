#!/bin/bash

xmodmap -e "keycode 114 = Down"
xmodmap -e "keycode 113 = Up"

res=$(echo " ; ; ; ; " | rofi -sep ";" -dmenu -p "Exit?" -lines 1 -columns 5 -separator-style solid -location 0 -width 550 -hide-scrollbar -padding 5 -font "Mono 50" -scroll-method 0)

xmodmap -e "keycode 114 = Right"
xmodmap -e "keycode 113 = Left"

if [ $res = "" ]; then
    ~/lock.sh
fi
if [ $res = "" ]; then
    i3-msg exit
fi
if [ $res = "" ]; then
    ~/lock.sh && systemctl hibernate
fi
if [ $res = "" ]; then
    systemctl reboot
fi
if [ $res = "" ]; then
    systemctl poweroff
fi
exit 0
