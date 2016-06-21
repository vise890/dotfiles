#!/bin/zsh
export ZSH=${HOME}/.oh-my-zsh

if [ $(whoami) = 'root' ]; then
  export ZSH_THEME="gianu"
else
  export ZSH_THEME="robbyrussell"
fi

export COMPLETION_WAITING_DOTS="true"

setopt correct

export EDITOR='nvim'
alias vim="$EDITOR"
alias v="$EDITOR"

alias ccat="pygmentize -g"

alias zshrc='$EDITOR $HOME/.zshrc'
alias vimrc='$EDITOR $HOME/.vim/vimrc'
alias vplugs='$EDITOR $HOME/.vim/vimrc.plugs'

# todo.txt ###################################
export TODO_TXT_PATH=~/Documents/org/todo/todo.txt
export DONE_TXT_PATH=~/Documents/org/todo/done.txt
alias te="$EDITOR $TODO_TXT_PATH"

# THE PATHs ##################################
export CODEPATH="$HOME/Code"

# NPM / node stuff
PATH=$HOME/.npm/bin:./node_modules/.bin:$PATH

# Go's stuff
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

# haskell's stack, pip & friends
PATH=$HOME/.local/bin:$PATH

# useful user scripts
PATH=$CODEPATH/scripts:$PATH

# user bin dir
PATH=$HOME/bin:$PATH

# Ensure path does not contain duplicates.
typeset -gU path
#############################################

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(pass autojump colored-man docker last-working-dir vi-mode)

source "$ZSH/oh-my-zsh.sh"

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
