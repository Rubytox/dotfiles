# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/rubytox/.oh-my-zsh"

  ZSH_DISABLE_COMPFIX=true

export ECLIPSE_HOME="$HOME/Logiciels/eclipse/eclipse/"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="rubytox"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git 
        sudo
        zsh-autosuggestions
        chucknorris
        command-not-found
        colorize
        zsh-256color
        notify
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
alias cls="clear"
alias lock="i3lock -i ~/.config/i3/lock.png"
alias cal="ncal -bM"
alias googler="googler --noua"

# alias java="java -cp \".\""
# alias javac="javac -cp \".\""

# Path
export PATH="$ECLIPSE_HOME:/opt/whatsapp/:/opt/texcount/:$HOME/.local/kitty.app/bin:$PATH"
# export CLASSPATH="/home/rubytox/Documents/JADE/jade/lib/jade.jar"
source /opt/mips-projetc/setup.sh

# Zsh syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# mkdir + cd

mcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1" || return
}

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/share/man:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/share/info:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/home/rubytox/bin/john-files:$PATH"

alias sl="sl -alF"
alias xc="tr -d '^\n' | xclip -selection clipboard"
alias scr="gnome-screenshot -i"

# Make kitty send terminfo
if [ $TERM = "xterm-kitty" ]; then
    export KITTY_SSH_SET=1
    alias ssh="kitty +kitten ssh"
fi

alias ensivpn="/opt/cisco/anyconnect/bin/vpn"

# PROJET GL
export PATH="$HOME/Documents/COURS/2A/COURS/4MMPGL/global/bin:$PATH"
export PATH="$HOME/Documents/COURS/2A/COURS/4MMPGL/gl32/src/main/bin:$PATH"
export PATH="$HOME/Documents/COURS/2A/COURS/4MMPGL/gl32/src/test/script/launchers:$PATH"
# Pour le projet aussi, peut-être revenir à la jdk 11 après
# export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

export RISCV=/riscv-tools
export PATH="$PATH:$RISCV/bin"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export PATH=/opt/oracle/instantclient_19_6:$PATH
export LD_LIBRARY_PATH=/opt/oracle/instantclient_19_6:$LD_LIBRARY_PATH
export CLASSPATH="$CLASSPATH:/home/rubytox/Documents/COURS/2A/COURS/4MMPBDCO/pbdco-equipe3/WithJava8/ojdbc6.jar"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
