#!/usr/bin/bash
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sources
source /usr/share/doc/pkgfile/command-not-found.bash

# Prompt
export PS1='--$PWD->\[$(tput sgr0)\]'

# System maintenance
alias mydotfiles="/usr/bin/git --git-dir=/home/bart/.my_dotfiles/ --work-tree=/home/bart/"
alias kop='sudo $(history -p !!)'
alias mkd='mkdir -pv'
alias ll='ls -alhG'

# Program shortcuts
alias swifi='sudo wifi-menu'
alias pac='pacman'
alias spac='sudo pacman'
alias v='vim'
alias sv='sudo vim'

# Colored output
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ip='ip -c'
alias diff='diff --color'

cs () { cd "$@" && ls; }
alias cd='cs'
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
