#!/bin/sh

[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

## keyboard layouts:
setxkbmap -layout us,ru
setxkbmap -option 'grp:alt_shift_toggle'
setxkbmap -option caps:escape

## Setting colorschemes

# wal -c
# wal -i ~/.config/wall.png -o wal-set

autorandr --change
~/.config/wpg/wp_init.sh
setbg
wal-dunst

## Run vm
exec i3
