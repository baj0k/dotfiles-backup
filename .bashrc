#!/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include
[ -f "$XDG_CONFIG_HOME/aliasrc" ] && source "$XDG_CONFIG_HOME/aliasrc"
[ -f "$XDG_BIN_HOME/pkg-not-found" ] && source "$XDG_BIN_HOME/pkg-not-found"
[ -f "$XDG_BIN_HOME/ssh-agent-autostart" ] && source "$XDG_BIN_HOME/ssh-agent-autostart"

# Change prompt color for remote sessions
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	prompt_color='$(tput smul)$(tput bold)$(tput setaf 46)'
else
	prompt_color='$(tput smul)$(tput bold)$(tput setaf 45)'
fi
export PS1='\['${prompt_color}'\]--$PWD->\[$(tput sgr0)\]'
unset prompt_color
