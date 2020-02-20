#!/usr/bin/bash
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Sources
source ~/.config/aliasrc
source /usr/share/doc/pkgfile/command-not-found.bash

# Prompt
export PS1='\[$(tput smul)$(tput bold)$(tput setaf 6)\]--$PWD->\[$(tput sgr0)\]'
