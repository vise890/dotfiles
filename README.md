# Installation
```bash
$ git clone https://github.com/vise890/dotfiles
$ cd dotfiles
$ ./install.sh
```

If you want to install the extra configs (e.g. ./gnome):
```
stow -t ~ gnome
```

## Pre-requisites
- GNU `stow`
- `ghc-mod` (for hs development in vim)
  - `cabal install ghc-mod`
