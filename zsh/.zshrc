#!/bin/zsh

[ -f /etc/profile ] && source /etc/profile

export ZSH=$HOME/.oh-my-zsh

if [ $(whoami) = 'root' ]; then
  export ZSH_THEME="gianu"
else
  export ZSH_THEME="robbyrussell"
fi

export COMPLETION_WAITING_DOTS="true"
setopt correct


export EDITOR='nvim'

source $HOME/.zaliases

# $PATH & friends
source $HOME/.zprofile


# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump colored-man docker kubectl last-working-dir vi-mode mix)
source "$ZSH/oh-my-zsh.sh"


# syntax highlighting
source \
  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward


# initialize scm breeze
source "$HOME/.scm_breeze/scm_breeze.sh"
