# Source .bashrc
[ -f "${HOME}/.bashrc" ] && . "${HOME}/.bashrc"

# Start X after login
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -f Xorg && exec startx "${XINITRC:?}"

# Load RVM into a shell session *as a function*
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm" 
