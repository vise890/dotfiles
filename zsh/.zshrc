#!/bin/zsh
#### THE PATHs ###############################
# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

export ORGPATH="$HOME/Documents/org"
export CODEPATH="$HOME/Code"

# golang stuff
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

# js stuff
PATH=~/.npm/bin:$PATH

# ruby stuff
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# haskell stuff
PATH="$HOME/.cabal/bin:$PATH"

# useful user scripts
PATH=$CODEPATH/scripts:$PATH


# Ensure path does not contain duplicates.
typeset -gU path
#############################################

export ZSH_THEME="robbyrussell"
export COMPLETION_WAITING_DOTS="true"

export EDITOR='vim'
alias v="$EDITOR"

alias zshrc='$EDITOR $HOME/.zshrc'
alias vimrc='$EDITOR $HOME/.vimrc'
alias vplugs='$EDITOR $HOME/.vimrc.plugs'
alias org='cd $ORGPATH && $EDITOR .'

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump pacman vi-mode colored-man)

source "$ZSH/oh-my-zsh.sh"

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
