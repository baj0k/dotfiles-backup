#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include
[ -f "$HOME/.config/envrc" ] && source "$HOME/.config/envrc"
[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.local/scripts/pkg-not-found" ] && source "$HOME/.local/scripts/pkg-not-found"
[ -f "$HOME/.local/scripts/ssh-agent-autostart" ] && source "$HOME/.local/scripts/ssh-agent-autostart"

# Prompt
export PS1='\[$(tput smul)$(tput bold)$(tput setaf 6)\]--$PWD->\[$(tput sgr0)\]'
