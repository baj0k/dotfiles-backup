#!/bin/sh -e

i3lock --fuzzy -s 15 -r 40 -p default -u #-i /tmp/screen-lock.png -p default -u
sleep 60; pgrep i3clock && xset dpms force off
