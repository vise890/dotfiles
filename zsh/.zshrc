#!/bin/zsh
# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

if [ $(whoami) = 'root' ]; then
  export ZSH_THEME="gianu"
else
  export ZSH_THEME="robbyrussell"
fi

export COMPLETION_WAITING_DOTS="true"

setopt correct

export EDITOR='vim'
alias v="$EDITOR"

alias ccat="pygmentize -g"

# duplicate current terminal window
alias dup="urxvt &"

# todo.txt ###################################
export TODO_TXT_PATH=~/Documents/org/todo/todo.txt
export DONE_TXT_PATH=~/Documents/org/todo/done.txt
alias tm="todotxt-machine $TODO_TXT_PATH $DONE_TXT_PATH"

# THE PATHs ##################################
export CODEPATH="$HOME/Code"

# ruby stuff
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# NPM stuff
PATH=$HOME/.npm/bin:$PATH

# haskell's stack, pip & friends
PATH=$HOME/.local/bin:$PATH

# useful user scripts
PATH=$CODEPATH/scripts:$PATH

# user bin dir
PATH=$HOME/bin:$PATH

# Ensure path does not contain duplicates.
typeset -gU path
#############################################

alias zshrc='$EDITOR $HOME/.zshrc'
alias vimrc='$EDITOR $HOME/.vimrc'
alias vplugs='$EDITOR $HOME/.vimrc.plugs'

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump lein archlinux history vi-mode sudo systemd colored-man)

source "$ZSH/oh-my-zsh.sh"

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

