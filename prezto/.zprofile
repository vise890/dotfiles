# Vi Mode
bindkey -v
# restore some shortcuts in vi-mode
bindkey '^R' history-incremental-search-backward

#
# Executes commands at login pre-zshrc.
#

export EDITOR='vim'
export PAGER='less'

#
# Paths
#

export CODEPATH="$HOME/Code"
export ORGPATH="$HOME/Documents/org"

export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

PATH=$CODEPATH/scripts:$PATH

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
