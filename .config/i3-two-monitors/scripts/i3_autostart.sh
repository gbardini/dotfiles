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

# Lauch polybar
# "$idir"/scripts/i3_bar

# Lauch compositor
"$idir"/scripts/i3_comp.sh

# Fix f1-f12 keys
"$idir"/scripts/i3_f1_f12_keys.sh

# audio
/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
