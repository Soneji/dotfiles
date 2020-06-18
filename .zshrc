# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dhaval/.oh-my-zsh"

export TERM="xterm-256color"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="avit"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"
HISTSIZE=10000000
SAVEHIST=10000000
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  virtualenv
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#if type brew &>/dev/null; then
#  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
#fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
	custom_moji
	virtualenv
	vcs
	dir_writable
	status
	user
	dir
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
	ssh
	time
)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DIR_HOME_BACKGROUND='123'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='123'
POWERLEVEL9K_DIR_ETC_BACKGROUND='123'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='123'
#POWERLEVEL9K_TIME_FORMAT="%D{%t:%M %d/%m/%y}"
POWERLEVEL9K_TIME_FORMAT="%D{%L:%M %d/%m/%y}"

POWERLEVEL9K_CUSTOM_MOJI="echo -n '\uf6f6'"
POWERLEVEL9K_CUSTOM_MOJI="echo -n 💩"
POWERLEVEL9K_CUSTOM_MOJI_FOREGROUND="none"
POWERLEVEL9K_CUSTOM_MOJI_BACKGROUND="none"

POWERLEVEL9K_MODE='nerdfont-complete'

#neofetch
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

eval $(thefuck --alias)

### for chromium builds 
# export PATH="$PATH:/Users/dhaval/Chromium Builds/depot_tools"

### for jhbuild for steghide
# export PATH="$PATH:/Users/dhaval/.local/bin"

### for macports
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# export DISPLAY=:0.0

### this is to make venv python work? ###
export VIRTUAL_ENV_DISABLE_PROMPT=0
