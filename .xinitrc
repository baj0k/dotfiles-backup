#!/bin/sh

# Use Xresources
xrdb -merge $XDG_CONFIG_HOME/Xresources &

#Autostart 
mpd &
remap &
setbg &
#xcompmgr &		# xcompmgr for transparency
#dunst &			# dunst for notifications
#xset r rate 300 50 &	# Speed xrate up

exec i3
