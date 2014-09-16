# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

export EDITOR='vim'
alias v="$EDITOR"

# RC/Config files ###########################
alias zshrc="$EDITOR $HOME/.zshrc"
alias tmuxconf="$EDITOR $HOME/.tmux.conf"
alias vimrc="$EDITOR $HOME/.vimrc"
alias vbundles="$EDITOR $HOME/.vimrc.bundles"
#############################################

# ORG stuff #################################
export ORGPATH="$HOME/org"

alias org="cd $ORGPATH && vim ."

export TODO_TXT_PATH="$ORGPATH/todo/todo.txt"
export DONE_TXT_PATH="$ORGPATH/todo/done.txt"
alias te="$EDITOR $TODO_TXT_PATH"
#############################################

# plugins can be found in ~/.oh-my-zsh/plugins/
plugins=(git autojump pacman vi-mode tmux colored-man)

source $ZSH/oh-my-zsh.sh

# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

#### THE PATH #################################################################
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH

# golang stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# add cabal (haskell) bins
export PATH=$HOME/.cabal/bin:$PATH

# add useful user scripts
export PATH=$PATH:$HOME/code/scripts
###############################################################################

# initialize scm breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# hack for getting more colours while on gnome-terminal
if [[ "$COLORTERM" == "gnome-terminal" ]]; then
  export TERM=xterm-256color
fi

