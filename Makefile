SCRIPTS := $(wildcard git-*)
DESTINATION_DIRECTORY := $(HOME)/bin

INSTALL := install
ifeq ($(shell uname),Darwin)
  INSTALL := ginstall
endif

install:
	- git commit -a
	- git push
	$(INSTALL) --verbose --preserve-timestamps \
		--target-directory=$(DESTINATION_DIRECTORY) $(SCRIPTS)
