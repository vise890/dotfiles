#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "==> copy dotfiles"
stow --restow --target="$HOME" gtk haskell hidpi i3 clojure nodejs readline ruby spacemacs vim x11 zathura zsh


