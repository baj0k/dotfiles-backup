# Start X after login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep Xorg && exec startx "${XINITRC:?}"
