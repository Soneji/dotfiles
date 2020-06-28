# shellcheck shell=sh
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim;

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[31m\]\h\[\e[m\]\[\e[34m\]:\[\e[m\]\[\e[31m\]\w\[\e[m\]\[\e[34m\]\\$\[\e[m\] "

HISTSIZE=10000
HISTFILESIZE=10000

shopt -s cdspell
shopt -s nocasematch

if [ -x "$(command -v brew)" ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

if [ -x "$(command -v thefuck)" ]; then
    eval $(thefuck --alias)
fi

#bash-insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#neofetch

export PATH="$PATH:/Users/dhaval/Chromium Builds/depot_tools"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/dhaval/git-clones/flutter/bin
export PATH=$PATH:/Library/TeX/texbin
export PATH=$PATH:/Applications/MATLAB_R2019b.app/bin
export PATH=$PATH:~/.local/bin

SHELL_SESSION_HISTORY=0 
