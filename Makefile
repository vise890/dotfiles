STOW_PACKAGES=dconf haskell i3 rofi nodejs readline vim x11 zathura zsh
TARGET=${HOME}

OH_MY_ZSH_PATH="$(TARGET)/.oh-my-zsh"
SCM_BREEZE_PATH="$(TARGET)/.scm_breeze"

DOT_VIM_PATH="./vim/.vim"

default:
	@echo "==> Nothing to be done, use 'make install'"


install: stow vim_install oh_my_zsh_install scm_breeze_install

clean: vim_clean oh_my_zsh_clean scm_breeze_clean unstow


vim_install:
	stow --restow --target=$(TARGET) vim
	@echo "==> install vim-plug and plugins"
	mkdir -p $(DOT_VIM_PATH)/autoload
	curl -fLo $(DOT_VIM_PATH)/autoload/plug.vim \
	      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim -u "$(TARGET)/.vim/plugs.vim" +PlugInstall +qall!
	nvim +UpdateRemotePlugins +qall! || true # neovim only: don't fail if just vim

vim_clean:
	stow --delete --target=$(TARGET) vim
	rm -rf $(DOT_VIM_PATH)/plugged
	rm -rf $(DOT_VIM_PATH)/autoload


oh_my_zsh_install:
	stow --restow --target=$(TARGET) zsh
	@echo "==> install oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $(OH_MY_ZSH_PATH)

oh_my_zsh_clean:
	stow --delete --target=$(TARGET) zsh
	rm -rf $(OH_MY_ZSH_PATH)


# FIXME: scm_breeze is a dirty hack and should be burned with the sacred fire of doom remove it as soon as possible
scm_breeze_install:
	@echo "==> install scm_breeze"
	git clone https://github.com/scmbreeze/scm_breeze.git $(SCM_BREEZE_PATH)
	"$(SCM_BREEZE_PATH)/install.sh"
	# FIXME: massive hack to restore zshrc
	git checkout ./zsh/.zshrc

scm_breeze_clean:
	rm -rf $(SCM_BREEZE_PATH)


stow:
	@echo "==> linking dotfiles (stowing)"
	stow --restow --target=$(TARGET) $(STOW_PACKAGES)

unstow:
	@echo "==> removing dotfile links (unstowing)"
	stow --delete --target=$(TARGET) $(STOW_PACKAGES)
