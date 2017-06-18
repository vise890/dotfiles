PACKAGES_TXT="packages.txt"

default:
install: stow
	cat $(PACKAGES_TXT) | xargs --max-args 1 code --install-extension
dump:
	code --list-extensions > $(PACKAGES_TXT)
clean:
	rm -rf $(shell cat ./.gitignore)
	rm -rf ~/.vscode
stow:
	stow --target ~ --dir './../../..' vscode
