#!/bin/bash
# volume Herbst

Volume_niveau=$(ponymix get-volume)
Volume_test_muted=$(ponymix | head -n 3 | tail -n 1 | awk '{ print $4 }')
	echo "<txt>vol "$Volume_niveau "<span foreground='Red'>"$Volume_test_muted"</span></txt><bar>$Volume_niveau</bar>"
