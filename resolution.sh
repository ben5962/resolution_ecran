#!/bin/bash
#http://superuser.com/questions/311378/how-to-get-a-higher-resolution-on-ubuntu-11-04-using-an-intel-chipset

RESOLUTION=$(cvt 1440 900 | sed -ne '2p' |cut -d' ' -f 3-14)
xrandr --newmode NORMAL "${RESOLUTION}"
xrandr --addmode VGA1 NORMAL
xrandr --output VGA1 --mode NORMAL

