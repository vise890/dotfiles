PACKAGES_TXT="packages.txt"

default:
install:
	cat $(PACKAGES_TXT) | xargs apm install
dump:
	apm list --installed --bare | sed 's/@.*$$//g' > $(PACKAGES_TXT)
clean:
	rm -rf $(shell cat ./.gitignore)
