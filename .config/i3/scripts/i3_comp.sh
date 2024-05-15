#!/usr/bin/env bash

## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>

# i3 directory
DIR="$HOME/.config/i3"

# Terminate if picom is already running
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

# Launch picom
picom -b --config "$DIR"/picom.conf
