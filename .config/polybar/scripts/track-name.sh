#!/bin/bash

. "${HOME}/.cache/wal/colors.sh"

case $(playerctl status) in
    "Paused") status="%{u$color1}%{+u} " ;;
    "Playing") status="%{u$color4}%{+u} 契" ;;
esac

name="$(playerctl metadata xesam:artist) - $(playerctl metadata xesam:title)"

echo $status ${name:0:50} %{u-}
