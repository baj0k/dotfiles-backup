#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include
[ -f "$HOME/.config/envrc" ] && source "$HOME/.config/envrc"
[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source "$XDG_CONFIG_HOME/aliasrc"
[ -f "$HOME/.local/bin/pkg-not-found" ] && source "$HOME/.local/bin/pkg-not-found"
[ -f "$HOME/.local/bin/ssh-agent-autostart" ] && source "$HOME/.local/bin/ssh-agent-autostart"

# Prompt
export PS1='\[$(tput smul)$(tput bold)$(tput setaf 6)\]--$PWD->\[$(tput sgr0)\]'
