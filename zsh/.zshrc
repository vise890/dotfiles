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
alias i3config='$EDITOR $HOME/.i3/config'
alias vimrc='$EDITOR $HOME/.vimrc'
alias vplugs='$EDITOR $HOME/.vimrc.plugs'
#############################################

# Code ######################################
export CODEPATH="$HOME/Code"
#############################################

# ORG stuff #################################
export ORGPATH="$HOME/Documents/org"
alias org='cd $ORGPATH && $EDITOR .'
alias te="$EDITOR $ORGPATH/todo/todo.txt"
#############################################

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump pacman vi-mode colored-man python pip)

source "$ZSH/oh-my-zsh.sh"

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

#### THE PATH ###############################
export PATH=/usr/local/bin:$PATH

# golang stuff
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

# ruby gems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# useful user scripts
PATH=$CODEPATH/scripts:$CODEPATH/avaaz_scripts:$PATH

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path
#############################################

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# hack for getting more colours while on gnome-terminal
if [[ "$COLORTERM" == "gnome-terminal" ]]; then
  export TERM=xterm-256color
fi

