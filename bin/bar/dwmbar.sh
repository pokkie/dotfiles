#!/usr/bin/env bash

# kill bar if already running
if [ $(pgrep lemonbar) ] ; then
    pkill -9 lemonbar
fi

# source wal colors
. ${HOME}/.cache/wal/colors.sh

# ─────────────────────────────────────────────────────── #
DIM=$(xrandr | grep \* |awk '{print $1}')
s_width="$(sed 's/x.*//' <<< "$DIM")"
s_height="$(sed 's/^[^x]*x//' <<< "$DIM")"
# ─────────────────────────────────────────────────────── #

# ────────────── Spanned Across bottom ────────────────── #
gap=24
w=$(echo $s_width - $gap*2 | bc)
h=$(echo $s_height / 18 | bc)
x=$gap
y=$(echo "$gap / 1.4" | bc)
# ─────────────────────────────────────────────────────── #

layout() { 
    case $(cat /tmp/dwm_info/current_layout) in
        # "0") echo "\\uf44e" ;; # tiled
        # "1") echo "\\ue28e" ;; # floating
        # "2") echo "\\ue245" ;; # monocle
        # "3") echo "[CMC]" ;; # center master
        # "4") echo "[CFM]" ;; # center floating master
        # "5") echo "[VVV]" ;; # fibonacci
        # "6") echo "\\uf037" ;; # top master
        "0") echo "\\uf44e" ;; # tiled
        "1") echo "F" ;; # floating
        "2") echo "M" ;; # monocle
        "3") echo "G" ;; # grid
        "4") echo "CMC" ;; # center master
        "5") echo "CFM" ;; # center floating master
        "6") echo "VVV" ;; # fibonacci
        "7") echo "DDD" ;; # top master

    esac
}

wrksp() {
    # case "$1" in
    #     "1") echo "" ;;
    #     "2") echo "" ;;
    #     "3") echo "" ;;
    #     "4") echo "" ;;
    #     "5") echo "" ;;
    #     "6") echo "" ;;
    # esac

    if [ $(cat /tmp/dwm_info/ws"$1") -eq 1 ] ; then
        echo "$(iscur $1) %{F$color2}$1%{F-} %{-u}"
    else
        echo "$(iscur $1) $1 %{-u}"
    fi
}
iscur() { 
    if [ $CUR_WS -eq $1 ] ; then
        echo "%{+u}"
    else
        echo "%{-u}"
    fi
}

vol(){
    val=$(sh ~/bin/BSDNixVolume.sh -get)
    if [ $val -gt 50 ] ; then 
        echo "\\uf028%{T3} $val%%{T-}"
    elif [ $val -gt 0 ] ; then
        echo "\\uf027%{T3} $val%%{T-}"
    else 
        echo "\\uf026"
    fi
}

#vpn(){
#    if [ $(pgrep openvpn) ] ; then
#        echo "\\uf023"
#    else
#        echo "\\uf09c"
#    fi
#}

net(){ # Connected or nah? ..
  ping=`ping 8.8.8.8 -c 1 | awk '/rtt/ {printf("%d\n",$4 + 0.5)}'`
  test -n "${ping}" && echo "%{F$BGREEN}    " || echo "%{F$BRED}   %{F-} No Connection"
  if [ $ping ] ; then
    result="\uf1eb"
  else
    result="\uf467"
  fi
  echo $result
}


underline_pix=6
clickable_areas=0

while true ; do {
    #vpn=$(vpn)
    #wifi=$(sh ~/bin/wifi-check.sh iwn0)
    #bat="%{T2} $(sh ~/bin/battery-check.sh)"
    # dat="%{T5}$(date '+%a %b %d - %l:%M %p') %{T-}"
    dat="%{F$color2}%{T5}$(date '+%l:%M %p') %{T-}%{F-}"
    vol="$(vol)"
    
    song="%{F$color2}%{T4}%{c}$(bash ~/bin/bar/get-song.sh 42 '')%{F-}%{T-}"

    CUR_WS=$(cat /tmp/dwm_info/current_ws)
    layout="%{T2}$(layout)"
    ws1="$(wrksp 1)"
    ws2="$(wrksp 2)"
    ws3="$(wrksp 3)"
    ws4="$(wrksp 4)"
    ws5="$(wrksp 5)"
    ws6="$(wrksp 6)"
    ws7="$(wrksp 7)"
    ws8="$(wrksp 8)"

    printf " %b \\n" \
        "%{T4}$ws1$ws2$ws3$ws4$ws5$ws6$ws7$ws8 %{-u}%{T-}$layout $song %{r} $net $vol $dat" 

    sleep 0.5
} done | \

 
lemonbar -f "RobotoMono Nerd Font Mono:size=14" \
         -f "FontAwesome:size=16" \
         -f "Terminus:size=12" \
         -f "RobotoMono Nerd Font Mono:size=12" \
         -f "tewi:size=14" \
         -g "$w"x"$h"+$x+$y \
         -n "lemonbar" \
         -u "$underline_pix" \
         -U "$color2" \
         -B "$color0" \
         -F "$color1" \
         -a "$clickable_areas" \

# -f "DejaVu Sans Mono" \
# -f "Noto Sans Mono" \
# -f "Droid Sans Mono" \

