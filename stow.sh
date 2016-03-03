#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "==> copy dotfiles"
stow --restow --target="$HOME" dconf haskell hidpi i3 clojure nodejs readline ruby vim x11 zathura zsh
