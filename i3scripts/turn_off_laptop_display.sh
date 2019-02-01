#!/bin/bash
intern=$(xrandr  | head -n 2 | tail -n 1 | cut -d ' ' -f 1)
extern=HDMI2

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --off --output "$extern" --auto
fi
