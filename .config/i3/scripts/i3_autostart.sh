#!/usr/bin/env bash

## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>
##
## Autostart Programs

# i3 dir
idir="$HOME/.config/i3"

# Kill already running process
_ps=(xsettingsd)
for _prs in "${_ps[@]}"; do
	if [[ $(pidof ${_prs}) ]]; then
		killall -9 ${_prs}
	fi
done

# Launch xsettingsd daemon
xsettingsd --config="$idir"/xsettingsd &

# polkit agent
if [[ ! $(pidof xfce-polkit) ]]; then
	/usr/lib/xfce-polkit/xfce-polkit &
fi

# Enable power management
#xfce4-power-manager &

# Enable Super Keys For Menu
#ksuperkey -e 'Super_L=Alt_L|F1' &
#ksuperkey -e 'Super_R=Alt_L|F1' &

# Fix cursor
xsetroot -cursor_name left_ptr

# Resolution
"$idir"/scripts/i3_resolution.sh

# Restore wallpaper
"$idir"/scripts/i3_wallpaper.sh

# Lauch notification daemon
"$idir"/scripts/i3_dunst.sh

# Lauch compositor
"$idir"/scripts/i3_comp.sh

# audio
if [[ ! $(pidof pipewire) ]]; then
	/usr/bin/pipewire &
fi

if [[ ! $(pidof pipewire-pulse) ]]; then
	/usr/bin/pipewire-pulse &
fi

# Wireless internet
if [[ ! $(pidof nm-applet) ]]; then
	nm-applet
fi

# Keyboard layout
# setxkbmap -model abnt -layout us,br -variant ,, -option grp:alt_space_toggle
