#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/TTF
xset +fp /home/dagnachew/.fonts/siji.pcf
xset +fp /home/dagnachew/.local/share/fonts/ttf/
xset fp rehash

# french accent compose key
setxkbmap -option compose:ralt

numlockx &
#fehbg &
nitrogen --restore

mpd &

#urxvtd -q -o -f

#exec startxfce4
#exec frankenwm

wmname LG3D
. /etc/profile.d/jre.sh

export LANG=en_US.UTF-8
#sxhkd &
xsetroot -cursor_name left_ptr &
export PANEL_FIFO=/tmp/panel-fifo
#export BSPWM_STATE=/tmp/bspwm-state.json
#exec ~/.config/bspwm/wm

#rm -f /tmp/.dwm.fifo
#mkfifo /tmp/.dwm.fifo

#~/.config/scripts/bar/dwmbar.sh &
#exec dwm

~/bin/barscript1 &
exec 2bwm
