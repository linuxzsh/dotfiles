# ~/.xinitrc
# Last modified: dimanche 21/07/2019 at 19:32:12
# vi:syntax=sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
  for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Environment settings
errorlog="${HOME}/.xerrors"
# Log settings
# Always start X11 with a clean log file
if (cp /dev/null "${errorlog}"); then
  chmod 600 "${errorlog}"
  exec >"${errorlog}" 2>&1
  break
fi

[ -e ~/.Xdefaults ] && xrdb -merge ~/.Xdefaults

# clavier bepo (et non pas fr-bepo !!)
setxkbmap fr bepo
xset b off

# minidlna > dans ~/.zshrc

# cosmetic
## bug> screen not updating in awesome after resolution change
## so patch
hsetroot -solid "#151515"
## transparency
pgrep compton || compton &
## no cursor
pgrep unclutter || unclutter &
## polipo
# pgrep polipo || polipo -c /home/luke/.poliporc &
# exec awesome
sudo shorewall start &
urxvt &
herbstluftwm
# exec enlightenment_start
# subtle
# bspwm
