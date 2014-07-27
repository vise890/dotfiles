# Installation
```bash
git clone dotfiles.git ~/dotfiles && cd ~/dotfiles && ./install.sh
```
If you want to install the extra configs (e.g. ./gnome):
```
stow -t ~ gnome
```

## Pre-requisites
- GNU `stow`
- `ghc-mod` (for hs development in vim)
  - `cabal install ghc-mod`
  - `pacman -S haskell-ghc-mod`
