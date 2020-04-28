[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && /usr/bin/startx
