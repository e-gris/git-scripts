SCRIPTS := $(wildcard git-*)
DESTINATION_DIRECTORY := $(HOME)/bin

INSTALL := install
ifeq ($(UNAME),Darwin)
  INSTALL := ginstall
endif

install:
	- echo $(UNAME)
	- git commit -a
	- git push
	$(INSTALL) --verbose --preserve-timestamps \
	--target-directory=$(DESTINATION_DIRECTORY) $(SCRIPTS)
