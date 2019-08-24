#!/bin/sh
# test systemd pour la wibar d'awesome
# Reste à intégrer la variable "systemd" au panel de XFCE4 


#    TEST=$(systemctl status | head -n 2 | tail -n 1 | awk '{ print $2 }')
  # nombre de fails dans les services
  declare -i NBRFAIL
  declare -i t
NBRFAIL=$(systemctl status | head -n 4 | head -n 1 | awk '{ print $2 }')
# echo "<txt>" $NBRFAIL "</txt>"
    # echo
	if [ $NBRFAIL -eq 0 ]
	then
	    # t="Systemd ✓ OK (fail:$NBRFAIL)"
		# echo "<txt><span foreground='#b7db0e'>▄</span></txt>"
		# echo "<txt><span foreground='#00c000'>▄</span></txt>"
		echo "<txt><span foreground='#15538e'>▄ </span></txt>"
	    # echo "<txt> <span weight='Normal' fgcolor='#d0d0d0'> (Sd </span><span weight='Bold' fgcolor='Green'>✓</span><span weight='Normal' fgcolor='#d0d0d0'> OK) </span></txt>"
	    # echo "<tool>" systemctl --failed" </tool>"
	else
	  # t="Systemd ✗ ERROR (fails:$NBRFAIL)"
	    echo "<txt> "Systemd ✗ ERROR" </txt>"
	    notify-send -u critical "ERROR service Systemd !" "Action manuelle requise: \n sudo systemctl --list-failed \n et main dans le cambouis..."
	    # echo "<tool>" systemctl --failed "</tool>"
	fi
