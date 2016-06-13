default:
	@echo "==> Rendering templates"
	mkdir out || true
	python ./render.py

config:
	cp ./__variables__.py ./variables.py
	$(EDITOR) ./variables.py

install:
	@echo "==> Symlinking dotfiles"
	(cd out && stow -t ~ $(shell ls ./out))
