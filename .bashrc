#
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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

eval $(thefuck --alias)

#bash-insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#neofetch

export PATH="$PATH:/Users/dhaval/Chromium Builds/depot_tools"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/dhaval/git-clones/flutter/bin
export PATH=$PATH:/Library/TeX/texbin
export PATH=$PATH:/Applications/MATLAB_R2019b.app/bin
export PATH=$PATH:~/.local/bin
