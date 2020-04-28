#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include
[ -f "$HOME/.config/envrc" ] && source "$HOME/.config/envrc"
[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source "$XDG_CONFIG_HOME/aliasrc"
[ -f "$XDG_CONFIG_HOME/crontab" ] && pgrep -x crond >/dev/null || crond -f "$XDG_CONFIG_HOME/crontab"
[ ! -s "$XDG_CONFIG_HOME/mpd/pid" ] && mpd
[ -f "$XDG_BIN_HOME/pkg-not-found" ] && source "$XDG_BIN_HOME/pkg-not-found"
[ -f "$XDG_BIN_HOME/ssh-agent-autostart" ] && source "$XDG_BIN_HOME/ssh-agent-autostart"


# Prompt
export PS1='\[$(tput smul)$(tput bold)$(tput setaf 6)\]--$PWD->\[$(tput sgr0)\]'
