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
- `git`
- GNU `stow`
- `ghc-mod`, `hlint` (for hs development in vim)
  - `cabal install ghc-mod hlint`
- `cask` (emacs plugin manager)

### Nice to have / supported
- `zsh`
- `tmux`
- `autojump`
