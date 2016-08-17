STOW_PACKAGES=dconf haskell i3 rofi nodejs readline vim x11 zathura zsh
TARGET=${HOME}

OH_MY_ZSH_PATH="$(TARGET)/.oh-my-zsh"
SCM_BREEZE_PATH="$(TARGET)/.scm_breeze"

DOT_VIM_PATH="./vim/.vim"

all:
	@echo "==> Nothing to be done, use 'make install'"

# FIXME: scm_breeze is a dirty hack and should be burned with the sacred fire of doom remove it as soon as possible
install: stow
	@echo "==> install oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $(OH_MY_ZSH_PATH)
	@echo "==> install vim-plug and plugins"
	mkdir -p $(DOT_VIM_PATH)/autoload
	curl -fLo $(DOT_VIM_PATH)/autoload/plug.vim \
	      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim -u "$(TARGET)/.vim/vimrc.plugs" +PlugInstall +qall!
	nvim +UpdateRemotePlugins +qall! || true # neovim only: don't fail if just vim
	@echo "==> install scm_breeze"
	git clone https://github.com/ndbroadbent/scm_breeze.git $(SCM_BREEZE_PATH)
	"$(SCM_BREEZE_PATH)/install.sh"
	# FIXME: massive hack to restore zshrc
	git checkout ./zsh/.zshrc

clean: unstow
	@echo "==> removing dotfile dirs"
	rm -rf $(OH_MY_ZSH_PATH)
	rm -rf $(SCM_BREEZE_PATH)
	rm -rf $(DOT_VIM_PATH)/plugged
	rm -rf $(DOT_VIM_PATH)/autoload

stow:
	@echo "==> linking dotfiles (stowing)"
	stow --restow --target=$(TARGET) $(STOW_PACKAGES)
unstow:
	@echo "==> removing dotfile links (unstowing)"
	stow --delete --target=$(TARGET) $(STOW_PACKAGES)
