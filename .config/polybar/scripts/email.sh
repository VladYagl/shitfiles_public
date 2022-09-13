#!/bin/sh

notmuch new 2>/dev/null 1>/dev/null
unread=$(notmuch search tag:unread | wc -l)

if [ "$unread" -gt 0 ]; then
    echo "$unread"
else
    echo ""
fi
