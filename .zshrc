VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

setopt extendedglob

export GPG_TTY=$(tty)
export JAVA_HOME=/usr/bin/java
export PATH_TO_FX=/home/azamat/SDU/Java/javafx-sdk-11.0.2/lib/
export LD_LIRBARY_PATH=/usr/lib/perl5/5.32/core_perl/CORE
export XDG_CONFIG_HOME=/home/azamat/.config/

export ZSH="/home/azamat/.oh-my-zsh"
export CONFIG="$XDG_CONFIG_HOME"
export BSPWM="$CONFIG/bspwm"
export SXHKD="$CONFIG/sxhkd"
export MPD="$CONFIG/mpd"
export NCMPCPP="$HOME/.ncmpcpp"
export POLYBAR="$CONFIG/polybar"
export RANGER="$CONFIG/ranger"
export WALL="$HOME/Wallpapers/"
export JOPLIN="$HOME/joplin"

alias vim=nvim
alias setterm="vim $HOME/.Xdefaults"
alias setwm="vim $BSPWM/bspwmrc"
alias setkb="vim $SXHKD/sxhkdrc"
alias setsh="vim $HOME/.zshrc"
alias setpan="vim $POLYBAR/config"
alias setvim="vim $CONFIG/nvim/init.vim"

alias rswp="rm  -rf $HOME/.local/share/nvim/swap/*"

# API testing
alias send="curl -H 'Content-Type: application/json' --request POST -d"

# SDU
alias sa="cd $HOME/SDU/ACM"
alias acm="cd $HOME/SDU/ACM/contests"

# Temp
alias p="cd $HOME/SDU/3-junior/Web/playground"

alias pp="cd $HOME/Junk/project/project/project"
alias pa="cd $HOME/Junk/project/project/app"

# Portal
#alias p="cd $HOME/portal.sdu.back-end"
#alias ps="cd $HOME/portal.sdu.back-end/src"
#alias psm="cd $HOME/portal.sdu.back-end/src/models"
#alias psp="cd $HOME/portal.sdu.back-end/src/pipe"
#alias psr="cd $HOME/portal.sdu.back-end/src/routes"
#alias psc="cd $HOME/portal.sdu.back-end/src/config"
#alias psl="cd $HOME/portal.sdu.back-end/src/loaders"
#alias rp="cd $HOME/portal.sdu.back-end && npm run dev"

# One
alias o="cd /home/azamat/Repos/one-lab-scala/src/main/scala/one/lab/tasks"
alias one="cd /home/azamat/Repos/one-lab-scala/"

# Node
NODE_PACKAGES="${HOME}/.node-packages"
export PATH="$PATH:$NODE_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NODE_PACKAGES/share/man"

alias ni="npm install"
alias ns="npm start"
alias nd="node inspect"

# Vim
alias vpi="vim -c PlugInstall"
alias vpc="vim -c PlugClean"

alias mail="neomutt"

wl() {
  [[ -f "$WALL/$1.jpg" ]] && wal -i "$WALL/$1.jpg" -a 90 --saturate 0.3
  [[ -f "$WALL/$1.png" ]] && wal -i "$WALL/$1.png" -a 90 --saturate 0.3
}

cl() {
  [[ -f "$WALL/$1.jpg" ]] && wal -i "$WALL/$1.jpg" --saturate 0.3
  [[ -f "$WALL/$1.png" ]] && wal -i "$WALL/$1.png" --saturate 0.3
}

mp3_add_img() {
  eyeD3 --add-image "$1:FRONT_COVER" $2
}

mp3_ext_img() {
  eyeD3 --write-images=./ $1
}

flac_add_img() {
  metaflac  --preserve-modtime  --import-picture-from="2||||$1" $2
}

flac_ext_img() {
  metaflac --block-number=2 --export-picture-to=FRONT_COVER.jpg "$1" || metaflac --block-number=3 --export-picture-to=FRONT.jpg "$1"
}

audio_ext_img() {
  if [[ "$1" == *.flac ]]; then
    flac_ext_img "$1"
  else
    mp3_ext_img "$1"
  fi
}

2gif() {
  ffmpeg -i "$1" frame%04d.png
  gifski -o file.gif frame*.png
  for f in $(ls | grep frame); rm "$f"
}

update_dotfiles() {
  cp $HOME/.vimrc $HOME/dotfiles/.vimrc
  cp $HOME/.zshrc $HOME/dotfiles/.zshrc
  cp -r $CONFIG/mpd/* $HOME/dotfiles/mpd/
  cp -r $HOME/.mutt/* $HOME/dotfiles/mutt/
  cp -r $CONFIG/bspwm/* $HOME/dotfiles/bspwm/
  cp -r $CONFIG/sxhkd/* $HOME/dotfiles/sxhkd/
  cp -r $CONFIG/polybar/* $HOME/dotfiles/polybar/
  cp -r $CONFIG/ranger/* $HOME/dotfiles/ranger/
  cp -r $HOME/.ncmpcpp $HOME/dotfiles/ncmpcpp/

  cd $HOME/dotfiles
  git add -A
  git commit -m $(echo "updated dotfiles $(date +"%d.%m.%Y")")
  git push -u
}

ZSH_THEME="half-life"

#plugins=(git vi-mode zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
