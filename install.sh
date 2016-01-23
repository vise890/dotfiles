#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "==> copy dotfiles"
stow --restow --target="$HOME" gtk haskell hidpi i3 clojure nodejs readline ruby spacemacs vim x11 zathura zsh

echo "==> install oh-my-zsh"
git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" || true

echo "==> install scm_breeze"
git clone https://github.com/ndbroadbent/scm_breeze.git "$HOME/.scm_breeze" || true
"$HOME/.scm_breeze/install.sh"

echo "==> install vim-plug and plugins"
rm -rf ~/.vim/plugged/
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -u "$HOME/.vimrc.plugs" +PlugInstall +qall!
# neovim only: register remote plugins
vim +UpdateRemotePlugins +qall! || true

echo "==> install spacemacs"
mv ~/.emacs.d ~/.emacs.bak || true
git clone --recursive http://github.com/syl20bnr/spacemacs ~/.emacs.d

# FIXME: massive hack to restore zshrc
# scm_breeze should be installed manually or (better) nuked completely (since it is a dirty hack)
git checkout ./zsh/.zshrc

