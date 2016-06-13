default:
	mkdir out || true
	python ./render.py

config:
	cp ./__variables__.py ./variables.py
	$(EDITOR) ./variables.py

install:
	(cd out && stow -t ~ $(shell ls ./out))
