#!/bin/bash
# bash "strict mode" : http://redsymbol.net/articles/unofficial-bash-strict-mode
set -euo pipefail
IFS=$'\n\t'

DOTFILES_DIR=`pwd`

# copy dotfiles
stow --target=$HOME vim zsh ruby haskell

# install oh-my-zsh
rm -rf $HOME/.bash* # yeeeha!
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh || true

# install scm_breeze
git clone https://github.com/ndbroadbent/scm_breeze.git $HOME/.scm_breeze || true
$HOME/.scm_breeze/install.sh

# install vundle
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim || true
# FIXME: still doesn't work on linux
echo "\n\n" | vim - +PluginInstall +qall!

# compile vimproc native extensions
cd $HOME/.vim/bundle/vimproc.vim
make
cd $DOTFILES_DIR

# FIXME: massive hack to restore zshrc
# scm_breeze should be installed manually or (better) nuked completely (since it is a dirty hack)
git checkout ./zsh/.zshrc

