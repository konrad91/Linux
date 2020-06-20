#!/bin/bash
 
res=$(echo "||" | rofi -sep "|" -dmenu -i -p 'Power Menu: ' "" -theme powermenu.rasi)
 
if [[ $res = "" ]]; then
    xfce4-session-logout --logout
fi
if [[ $res = "" ]]; then
    xfce4-session-logout --reboot
fi
if [[ $res = "" ]]; then
    xfce4-session-logout --halt
fi
exit 0


