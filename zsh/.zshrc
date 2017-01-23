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


alias vimrc="vim $HOME/.config/nvim/init.vim"
alias vplugs="vim $HOME/.config/nvim/plugs.vim && vim +PlugUpgrade +PlugClean! +PlugUpdate! +PlugInstall! +qall!"


alias bpy='bpython'
alias bp='bpython'

# org / todo.txt
export ORG_DIR=$HOME/org
export TODO_DIR=$ORG_DIR/todo
alias te="$EDITOR $TODO_DIR/todo.txt"
alias sp="emacs $ORG_DIR/sparkfile.org"


# $PATH & friends
source $HOME/.zprofile


# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(autojump colored-man docker kubectl last-working-dir vi-mode)

source "$ZSH/oh-my-zsh.sh"


# syntax highlighting
source \
  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward


# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"
