PACKAGES_TXT="packages.txt"

default:
install:
	cat $(PACKAGES_TXT) | xargs apm install
dump:
	apm list --installed --bare > $(PACKAGES_TXT)
