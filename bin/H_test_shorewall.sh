#!/bin/bash
# test run shorewall

TEST=$(sudo shorewall status | head -n 3 | tail -n 1)
# status shorewall : Shorewall is running
TESTGOOD="Shorewall is running"

if [ "$TEST" == "$TESTGOOD" ]; then
	# echo "<txt><span foreground='#b7db0e'>▄</span></txt>"
	# echo "<txt><span foreground='#00c000'>▄</span></txt>"
	echo "<txt><span foreground='#15538e'>▄ </span></txt>"
else
	echo "<txt> SHOREWALL <span weight='Bold' fgcolor='Red'>FAILED</span></txt>"
	sudo shorewall stop
	sudo shorewall start
	notify-send -u critical "ERROR Shorewall !" "Relance du parefeu: \n "sudo shorewall start" effectué !"
fi
