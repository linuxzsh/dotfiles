#!/bin/bash
# keybind Alt+b no-panel

herbstclient pad 0 20 0 0 0
xfce4-panel --disable-wm-check > /dev/null 2>&1 & 
notify-send "PANEL" "panel is back !"
exit 0
