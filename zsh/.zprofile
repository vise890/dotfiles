export CODEPATH="$HOME/Code"

# NPM / node stuff
PATH=$HOME/.npm/bin:$PATH

# Go's stuff
export GOPATH=$HOME/go
PATH=$GOPATH/bin:$PATH

# rusts / cargo
PATH=$HOME/.cargo/bin:$PATH

# haskell's stack, pip & friends
PATH=$HOME/.local/bin:$PATH

# useful user scripts
PATH=$CODEPATH/scripts:$PATH

# user bin dir
PATH=$HOME/bin:$PATH

# Ruby gems
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Ensure path does not contain duplicates.
typeset -gU path
