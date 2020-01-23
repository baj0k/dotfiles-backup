#!/usr/bin/bash
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sources
source /usr/share/doc/pkgfile/command-not-found.bash

# Prompt
export PS1='--$PWD->\[$(tput sgr0)\]'

# System maintenance
alias sps='sudo pacman -S'
alias spr='sudo pacman -Rns'
alias mdot='git --git-dir=$HOME/.my_dotfiles/ --work-tree=$HOME'
alias kop='sudo $(history !!)'
alias mkd='mkdir -pv'
alias l='ls'
alias la='ls -A'
alias ll='ls -alF'
alias ssys='sudo systemctl'
alias cs='clear'
alias cd..='cd ..'

# Program shortcuts
alias o='xdg-open $@ > /dev/null 2> /dev/null'
alias wifi='sudo wifi-menu'
alias v='vim'
alias sv='sudo vim'
alias z='zathura'
alias m='mplayer'
alias dwojka="mplayer -cache 256 http://stream.polskieradio.pl/program2"

# Colors 
alias ls='ls -hN --color=auto --group-directories-first'
alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip -c'
alias diff='diff --color'

cdls () { cd "$@" && ls; }
alias cd='cdls'
alias ..='cd ..'

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# Internet
alias yt='youtube-dl -o "~/Downloads/%(title)s.%(ext)s" -ic --hls-prefer-ffmpeg'
alias yta='youtube-dl -o "~/Downloads/%(title)s.%(ext)s" -xic --hls-prefer-ffmpeg'
alias p='ping 8.8.8.8'

# Printer
cupsadm() { /bin/firefox "http://localhost:631"; }
