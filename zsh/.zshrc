#!/bin/zsh
export ZSH=$HOME/.oh-my-zsh

export EDITOR='nvim'

source $HOME/.zaliases

# $PATH & friends
[ -f /etc/profile ] && source /etc/profile
source $HOME/.zprofile


# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(

  # bgnotify
  # git
  # zsh-navigation-tools
  archlinux
  autojump
  cargo
  colored-man-pages
  docker
  docker-compose
  extract
  fancy-ctrl-z # switch back to vim with ctrl-z
  httpie
  kubectl
  last-working-dir
  lein
  npm
  pip
  rust
  stack
  terraform
  tig
  vault
  vi-mode

)



if [ $(whoami) = 'root' ]; then
  export ZSH_THEME="gianu"
else
  export ZSH_THEME="robbyrussell"
fi
export COMPLETION_WAITING_DOTS="true"
setopt correct

source "$ZSH/oh-my-zsh.sh"


# syntax highlighting
source \
  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward


# initialize scm breeze
source "$HOME/.scm_breeze/scm_breeze.sh"
