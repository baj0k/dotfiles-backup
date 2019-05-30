#!/usr/bin/bash

# Prompt
PS1="--$(pwd)-> "
export PS1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# System maintenance
alias mydotfiles="/usr/bin/git --git-dir=/home/bart/.my_dotfiles/ --work-tree=/home/bart/"
alias kop='sudo $(history -p !!)'
alias mkd='mkdir -pv'
alias ll='ls -alhG'
cs () { cd "$@" && ls; }
alias cd='cs'
alias ..='cd ..'

# Program shortcuts
alias mutt='neomutt -F $HOME/.config/mutt/.muttrc'
alias swifi='sudo wifi-menu'
alias pac='pacman'
alias spac='sudo pacman'
alias v='vim'
alias sv='sudo vim'

# Color output
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ip='ip -c'

# Internet
alias yt='youtube-dl -o "~/Downloads/%(title)s.%(ext)s" -ic'
alias yta='youtube-dl -o "~/Downloads/%(title)s.%(ext)s" -xic'
alias p='ping 8.8.8.8'

# Display
alias dint='xrandr --output eDP1 --mode 1366x768 --output DP2-2 --off'
alias dboth='xrandr --output eDP1 --primary --mode 1366x768 --output DP2-2 --mode 1920x1080  --above eDP1'
alias dext='xrandr --output DP2-2 --primary --mode 1920x1080 --output eDP1 --off'
