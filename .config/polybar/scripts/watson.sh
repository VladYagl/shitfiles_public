#!/bin/sh

. "${HOME}/.cache/wal/colors.sh"


if watson status | grep 'No project started.' -q; then
    last=$(watson log -s | sed -n 2p | cut -d ',' -f4,5)
    echo "%{u$color5}%{+u}  $last%{u-}"
else
    time=$(watson log -c -g | grep current | cut -d' ' -f11)
    if [ -z $time ]; then
        time=$(watson log -c -g | grep current | cut -d' ' -f8,9)
    fi;
    echo "%{u$color1}%{+u} $(watson status -p) $(watson status -t) : $time %{u-}"
fi
