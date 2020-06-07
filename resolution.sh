#!/bin/bash
#http://superuser.com/questions/311378/how-to-get-a-higher-resolution-on-ubuntu-11-04-using-an-intel-chipset

RESOLUTION=$(cvt 1440 900 | sed -ne '2p' |cut -d' ' -f 3-14)
ECRAN=$(xrandr |grep -E "\bconnected\b" |cut -d' ' -f 1
xrandr --newmode NORMAL "${RESOLUTION}"
xrandr --addmode "${ECRAN}" NORMAL
xrandr --output "${ECRAN}" --mode NORMAL

