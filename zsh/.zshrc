#!/bin/zsh
# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh
export ZSH_THEME="robbyrussell"

export COMPLETION_WAITING_DOTS="true"

setopt correct

export EDITOR='vim'
alias v="$EDITOR"

alias ccat="pygmentize -g"
# THE PATHs ##################################
export CODEPATH="$HOME/Code"

# ruby stuff
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# useful user scripts
PATH=$CODEPATH/scripts:$PATH

PATH=$HOME/bin:$PATH

# Ensure path does not contain duplicates.
typeset -gU path
#############################################

alias zshrc='$EDITOR $HOME/.zshrc'
alias vimrc='$EDITOR $HOME/.vimrc'
alias vplugs='$EDITOR $HOME/.vimrc.plugs'

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump pacman vi-mode colored-man)

source "$ZSH/oh-my-zsh.sh"

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

