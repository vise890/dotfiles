#!/bin/bash
# bash "strict mode" : http://redsymbol.net/articles/unofficial-bash-strict-mode
set -euo pipefail
IFS=$'\n\t'

DOTFILES_DIR=`pwd`

echo "==> copy dotfiles"
stow --restow --target=$HOME vim zsh tmux haskell lein

echo "==> install oh-my-zsh"
rm -rf $HOME/.bash* # yeeeha!
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh || true

echo "==> install scm_breeze"
git clone https://github.com/ndbroadbent/scm_breeze.git $HOME/.scm_breeze || true
$HOME/.scm_breeze/install.sh

echo "==> install vim-plug and plugins"
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u "~/.vimrc.plugs" +PlugInstall +qall!

# FIXME: massive hack to restore zshrc
# scm_breeze should be installed manually or (better) nuked completely (since it is a dirty hack)
git checkout ./zsh/.zshrc

