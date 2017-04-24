STOW_PACKAGES=readline vim zsh
TARGET=${HOME}

OH_MY_ZSH_PATH="$(TARGET)/.oh-my-zsh"
SCM_BREEZE_PATH="$(TARGET)/.scm_breeze"


default:
	@echo "==> Nothing to be done, use 'make install'"


install: stow vim_install oh_my_zsh_install scm_breeze_install

clean: vim_clean oh_my_zsh_clean scm_breeze_clean unstow


vim_install:
	stow --restow --target=$(TARGET) vim
	@echo "==> install vim-plug and plugins"
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim -u "vim/.config/nvim/plugs.vim" +PlugInstall +qall!
	nvim +UpdateRemotePlugins +qall! || true # neovim only: don't fail if just vim

vim_clean:
	stow --delete --target=$(TARGET) vim
	rm -rf ~/.local/share/nvim
	cat vim/.config/nvim/.gitignore | xargs rm -rf


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
