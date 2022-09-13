#!/bin/sh
# Profile file. Runs on login.

# Adds `~/.scripts` and all subdirectories to $PATH
export PATH="$HOME/.local/bin/:$HOME/.elan/bin/:$HOME/.mathlib/bin/:$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export EDITOR="vim"
export TERMINAL="st"
# export SHELL="fish"
# export FILE="vifm"
export READER="zathura"
# export BROWSER="google-chrome-stable"
# export BROWSER="surf"
export BROWSER="firefox"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
