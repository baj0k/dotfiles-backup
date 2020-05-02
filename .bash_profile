# Source .bashrc
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# Start X after login
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx $XINITRC
