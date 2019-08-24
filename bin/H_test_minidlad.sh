#!/bin/sh
# test minidlna pour le panel de xfce de Herbstluftwm
# Reste à intégrer à H


# test if THIS script is still running (with pidof)
# explain: 
# "-o" to ignore the pid dof the script itself
# match for the script with "basename" (can bu put into any script !)

MY_SCRIPT_NAME=`basename "$0"`
if pidof -o %PPID -x $MY_SCRIPT_NAME > /dev/null; then
    echo "Process already running"
    notify-send "Script Herbstluftwm" "`basename $0` already running"
    exit 1
fi

    # test si chaine non vide
        if pgrep -x "minidlnad" > /dev/null
        then
		# echo "<txt><span foreground='#b7db0e'>▄</span></txt>"
		# echo "<txt><span foreground='#00C000'>▄</span></txt>"
		echo "<txt><span foreground='#15539e'> ▄ </span></txt>"
        else
            echo "<txt>MINIDLNAD ✗ ERROR</txt>"
	    sleep 1
	    sudo systemctl restart luke_minidlna.service
	    notify-send -u critical "ERROR service Minidlnad !" "Relance du service \n Command: \n sudo systemctl restart luke_minidlna.service effectué !"
        fi

