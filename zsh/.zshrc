# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

export EDITOR='vim'
alias v="$EDITOR"

alias zshrc="$EDITOR $HOME/.zshrc"
alias vimrc="$EDITOR $HOME/.vimrc"

alias s="$EDITOR $HOME/notes/spark.md"
alias sp="$EDITOR $HOME/notes/spark-personal.md"

export TODO_TXT_PATH="$HOME/Documents/todo/todo.txt"
export DONE_TXT_PATH="$HOME/Documents/todo/done.txt"
alias te="$EDITOR $TODO_TXT_PATH"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git autojump pacman vi-mode colored-man)

source $ZSH/oh-my-zsh.sh

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

#### THE PATH #################################################################
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# golang stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# add cabal (haskell) bins
export PATH=$HOME/.cabal/bin:$PATH

# add useful user scripts
export PATH=$PATH:$HOME/code/scripts
###############################################################################

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# hack for getting more colours while on gnome-terminal
if [[ "$COLORTERM" == "gnome-terminal" ]]; then
  export TERM=xterm-256color
fi

