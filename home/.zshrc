# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    gitfast
    yarn
    colorize
    command-not-found
    sudo
    zsh-autosuggestions
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(thefuck --alias)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# COLORS

## diff
alias diff='diff --color=auto'

## grep
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias fgrep='LC_ALL=C grep -F --color=auto'

## ip
alias ip='ip -color=auto'

## ls
alias ls='ls --color=auto'
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

## grc (Generic Colouriser)
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n "$GRC" ]
then
    alias colourify="$GRC -es --colour=auto"
    alias cat='colourify cat'
    alias cvs='colourify cvs'
    alias df='colourify df'
    alias diff='colourify diff'
    alias dig='colourify dig'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias ls='colourify ls'
    alias ifconfig='colourify ifconfig'
    alias make='colourify make'
    alias mount='colourify mount'
    alias mtr='colourify mtr'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias ps='colourify ps'
    alias tail='colourify tail'
    alias traceroute='colourify traceroute'
    alias wdiff='colourify wdiff'
    alias blkid='colourify blkid'
    alias du='colourify du'
    alias dnf='colourify dnf'
    alias docker='colourify docker'
    alias docker-machine='colourify docker-machine'
    alias env='colourify env'
    alias id='colourify id'
    alias ip='colourify ip'
    alias iostat='colourify iostat'
    alias last='colourify last'
    alias lsattr='colourify lsattr'
    alias lsblk='colourify lsblk'
    alias lspci='colourify lspci'
    alias lsmod='colourify lsmod'
    alias lsof='colourify lsof'
    alias getfacl='colourify getfacl'
    alias getsebool='colourify getsebool'
    alias ulimit='colourify ulimit'
    alias uptime='colourify uptime'
    alias nmap='colourify nmap'
    alias fdisk='colourify fdisk'
    alias findmnt='colourify findmnt'
    alias free='colourify free'
    alias semanage='colourify semanage'
    alias sar='colourify sar'
    alias ss='colourify ss'
    alias sysctl='colourify sysctl'
    alias systemctl='colourify systemctl'
    alias stat='colourify stat'
    alias showmount='colourify showmount'
    alias tune2fs='colourify tune2fs'
    alias tcpdump='colourify tcpdump'
fi
