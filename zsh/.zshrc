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
alias vim="$EDITOR"
alias v="$EDITOR"
alias vimrc="vim $HOME/.config/nvim/init.vim"
alias vplugs="vim $HOME/.config/nvim/plugs.vim && vim +PlugUpgrade +PlugClean! +PlugUpdate! +PlugInstall! +qall!"


zshrc="$HOME/.zshrc"
zprofile="$HOME/.zprofile"
function zrl { source $zshrc && source $zprofile && rehash }
alias zshrc="$EDITOR $zshrc && zrl"
alias zprofile="$EDITOR $zprofile && zrl"


alias pa='pacaur'
alias pm='pacman'


# org / todo.txt
export NOTES_DIR=$HOME/Documents/notes
export TODO_DIR=$HOME/Documents/todo
alias te="$EDITOR $TODO_DIR/todo.txt"


alias ccat="pygmentize -g"

alias bp='bpython'


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
