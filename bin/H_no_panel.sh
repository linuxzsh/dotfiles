#!/bin/bash
herbstclient pad 0 0 0 0 0 &
pkill xfce4-panel &
notify-send "PANEL" "no-panel" &
exit 0
