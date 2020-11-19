# Source .bashrc
[ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

# Source environment variables
for f in $HOME/.config/environment.d/*; do
    source "$f"
    export $(cut -d= -f1 "$f")
    cut -d= -f1 "$f" | xargs -i systemctl --user import-environment {}
done

# Start X after login
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && startx $XINITRC

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
