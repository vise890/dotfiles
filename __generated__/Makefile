default:
	@echo "==> Rendering templates"
	rm -rf out
	mkdir out
	python ./render.py

config:
	cp ./__variables__.py ./variables.py
	$(EDITOR) ./variables.py

install:
	@echo "==> Symlinking dotfiles"
	(cd out && stow -t ~ $(shell ls ./out))
