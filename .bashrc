
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias mydotfiles="/usr/bin/git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME"
alias ls='ls -hN --color=auto --group-directories-first'
alias kop='sudo $(history -p !!)'
alias ..='cd ..'
alias swifi='sudo wifi-menu'
alias pingu='ping 8.8.8.8'
alias ll='ls -alhG'
alias ip='ip -c'
alias grep='grep --color=auto'

cs () { cd "$@" && ls; }
alias cd='cs'

export PS1="--$(pwd)-> "
