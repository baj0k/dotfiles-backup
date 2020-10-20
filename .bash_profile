# Source .bashrc
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# Start X after login
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx $XINITRC

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
