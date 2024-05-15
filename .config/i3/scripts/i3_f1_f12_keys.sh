#!/bin/bash
# correct below
# keycode  67 = F1 F1 F1 F1 F1 F1 XF86Switch_VT_1
# keycode  68 = F2 F2 F2 F2 F2 F2 XF86Switch_VT_2
# keycode  69 = F3 F3 F3 F3 F3 F3 XF86Switch_VT_3
# keycode  70 = F4 F4 F4 F4 F4 F4 XF86Switch_VT_4
# keycode  71 = F5 F5 F5 F5 F5 F5 XF86Switch_VT_5
# keycode  72 = F6 F6 F6 F6 F6 F6 XF86Switch_VT_6
# keycode  73 = F7 F7 F7 F7 F7 F7 XF86Switch_VT_7
# keycode  74 = F8 F8 F8 F8 F8 F8 XF86Switch_VT_8
# keycode  75 = F9 F9 F9 F9 F9 F9 XF86Switch_VT_9
# keycode  76 = F10 F10 F10 F10 F10 F10 XF86Switch_VT_10
# keycode  95 = F11 F11 F11 F11 F11 F11 XF86Switch_VT_11
# keycode  96 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12

# actual below
# keycode  232 = F1 F1 F1 F1 F1 F1 XF86Switch_VT_1
# keycode  233 = F2 F2 F2 F2 F2 F2 XF86Switch_VT_2
# keycode  128 = F3 F3 F3 F3 F3 F3 XF86Switch_VT_3
# keycode  212 = F4 F4 F4 F4 F4 F4 XF86Switch_VT_4
# keycode  237 = F5 F5 F5 F5 F5 F5 XF86Switch_VT_5
# keycode  238 = F6 F6 F6 F6 F6 F6 XF86Switch_VT_6
# keycode  173 = F7 F7 F7 F7 F7 F7 XF86Switch_VT_7
# keycode  172 = F8 F8 F8 F8 F8 F8 XF86Switch_VT_8
# keycode  171 = F9 F9 F9 F9 F9 F9 XF86Switch_VT_9
# keycode  121 = F10 F10 F10 F10 F10 F10 XF86Switch_VT_10
# keycode  122 = F11 F11 F11 F11 F11 F11 XF86Switch_VT_11
# keycode  123 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12

# command to fix keys
xmodmap -e "keycode 232 = F1"
xmodmap -e "keycode 233 = F2"
xmodmap -e "keycode 128 = F3"
xmodmap -e "keycode 212 = F4"
xmodmap -e "keycode 237 = F5"
xmodmap -e "keycode 238 = F6"
xmodmap -e "keycode 173 = F7"
xmodmap -e "keycode 172 = F8"
xmodmap -e "keycode 171 = F9"
xmodmap -e "keycode 121 = F10"
xmodmap -e "keycode 122 = F11"
xmodmap -e "keycode 123 = F12"
