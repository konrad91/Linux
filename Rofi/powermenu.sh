#!/bin/bash
 
res=$(echo " Logout|Reboot|Shutdown" | rofi -sep "|" -dmenu -i -p 'Power Menu: ' "" -theme powermenu.rasi)
 
#if [[ $res = "Lock" ]]; then
#    /home/khoaduccao/.config/lock.sh
#fi
if [[ $res = " Logout" ]]; then
    xfce4-session-logout --logout
fi
if [[ $res = "Reboot" ]]; then
    xfce4-session-logout --reboot
fi
if [[ $res = "Shutdown" ]]; then
    xfce4-session-logout --halt
fi
exit 0


