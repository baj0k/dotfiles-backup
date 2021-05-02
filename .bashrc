#/usr/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=2000

# Include
[ -f "${HOME}/.config/envrc" ] && source "${HOME}/.config/envrc"
[ -f "${HOME}/.config/aliasrc" ] && source "${HOME}/.config/aliasrc"
[ -f "${HOME}/.local/bin/pkg-not-found" ] && source "${HOME}/.local/bin/pkg-not-found"

# Change prompt color for remote sessions
if [ -n "${SSH_CLIENT}" ] || [ -n "${SSH_TTY}" ]; then
	prompt_color="$(tput smul)$(tput bold)$(tput setaf 46)"
else
	prompt_color="$(tput smul)$(tput bold)$(tput setaf 45)"
fi
export PS1='\['${prompt_color}'\]--$PWD->\[$(tput sgr0)\]'
unset prompt_color
