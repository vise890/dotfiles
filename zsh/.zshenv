#### THE PATHs ###############################
export ORGPATH="$HOME/org"
export TODO_TXT_PATH="$ORGPATH/todo.txt"
export DONE_TXT_PATH="$ORGPATH/done.txt"
export CODEPATH="$HOME/Code"

# golang stuff
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

# js stuff
PATH=~/.npm/bin:$PATH

# ruby stuff
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# haskell stuff
PATH="$HOME/.cabal/bin:$PATH" # cabal
PATH="$HOME/.local/bin:$PATH" # stack

# useful user scripts
PATH=$CODEPATH/scripts:$PATH


# Ensure path does not contain duplicates.
typeset -gU path
#############################################

export EDITOR='vim'

