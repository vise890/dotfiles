#!/bin/zsh

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

export COMPLETION_WAITING_DOTS="true"

export EDITOR='vim'
alias v='$EDITOR'

# RC/Config files ###########################
alias zshrc='$EDITOR $HOME/.zshrc'
alias tmuxconf='$EDITOR $HOME/.tmux.conf'
alias vimrc='$EDITOR $HOME/.vimrc'
alias vplugs='$EDITOR $HOME/.vimrc.plugs'
#############################################

# Code ######################################
export CODEPATH="$HOME/code"
#############################################

# ORG stuff #################################
export ORGPATH="$HOME/org"
alias org='cd $ORGPATH && $EDITOR .'

export TODO_TXT_PATH="$ORGPATH/todo/todo.txt"
export DONE_TXT_PATH="$ORGPATH/todo/done.txt"
alias te='$EDITOR $TODO_TXT_PATH'
#############################################

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump pacman rbenv cabal lein vi-mode colored-man)

source "$ZSH/oh-my-zsh.sh"

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

#### THE PATH ###############################
export PATH=/usr/local/bin:$PATH

# golang stuff
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# add cabal (haskell) bins
export PATH=$HOME/.cabal/bin:$PATH

# add rbenv shims to path
export PATH=$HOME/.rbenv/shims:$PATH

# add useful user scripts
export PATH=$HOME/code/scripts:$PATH

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
#############################################

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# hack for getting more colours while on gnome-terminal
if [[ "$COLORTERM" == "gnome-terminal" ]]; then
  export TERM=xterm-256color
fi

