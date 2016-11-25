#!/bin/zsh

[ -f /etc/profile ] && source /etc/profile

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

zshrc="$HOME/.zshrc"
zprofile="$HOME/.zprofile"
alias zrl="source $zshrc && source $zprofile && rehash"
alias zshrc="$EDITOR $zshrc && zrl"
alias zprofile="$EDITOR $zprofile && zrl"

alias vimrc="$EDITOR $HOME/.vim/vimrc"
alias vplugs="$EDITOR $HOME/.vim/vimrc.plugs"

alias bpy='bpython'
alias bp='bpython'

# todo.txt ###################################
export TODO_DIR=$HOME/org/todo/
alias te="$EDITOR $TODO_DIR/todo.txt"

source $HOME/.zprofile

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(grunt pass autojump colored-man docker last-working-dir vi-mode)

source "$ZSH/oh-my-zsh.sh"

# syntax highlighting
source \
  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
