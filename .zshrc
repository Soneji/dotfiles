# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh-histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep notify
unsetopt extendedglob nomatch
bindkey -v

export TERM="xterm-256color"

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/dhaval/git-clones/flutter/bin
export PATH=$PATH:/Library/TeX/texbin
export PATH=$PATH:/Applications/MATLAB_R2019b.app/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/Library/Ruby/Gems/2.6.0
export PATH=$PATH:/Users/dhaval/.gem/ruby/2.6.0
export PATH=$PATH:/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/gems/2.6.0

ENABLE_CORRECTION="true"
setopt correct_all

if [ -x "$(command -v thefuck)" ]; then
    eval $(thefuck --alias)
fi

export VIRTUAL_ENV_DISABLE_PROMPT=0


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/dhaval/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

fpath=( "$HOME/.config/zfunctions" $fpath )
# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_VI_MODE_SHOW=false

if [ -f "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
