# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/bart/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=50
SAVEHIST=100
bindkey -e
# End of lines configured by zsh-newuser-install

alias mydotfiles="/usr/bin/git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME"

alias ip link='ip -c link'
alias kop='sudo $(fc -ln -1)'
alias ..='cd ..'
alias swland='sudo ip link set wlan0 down'
alias swifi='sudo wifi-menu'
alias pingu='ping 8.8.8.8'
alias cs=function cs () {
    cd "$@" && ls
    }
PS1='--%d-💪😤->'
