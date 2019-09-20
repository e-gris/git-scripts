SCRIPTS := $(wildcard git-*)
DESTINATION_DIRECTORY := $(HOME)/bin

install:
	install --verbose --preserve-timestamps \
	--target-directory=$(DESTINATION_DIRECTORY) $(SCRIPTS)
