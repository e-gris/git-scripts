SCRIPTS := $(wildcard git-*)
DESTINATION_DIRECTORY := $(HOME)/bin

install:
	git commit -a
	git push
	install --verbose --preserve-timestamps \
	--target-directory=$(DESTINATION_DIRECTORY) $(SCRIPTS)
