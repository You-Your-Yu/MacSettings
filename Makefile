SHELL=/bin/bash

XCODE=/usr/bin/xcode-select
BREW=/usr/local/bin/brew
ANSIBLE=/usr/local/bin/ansible

.PHONY: init
init: $(XCODE) $(BREW) $(ANSIBLE)
	xcode-select --install
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install ansible
