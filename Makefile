SHELL=/bin/bash

XCODE=/usr/bin/xcode-select
BREW=/usr/local/bin/brew
ANSIBLE=/usr/local/bin/ansible

$(XCODE):
	xcode-select --install

$(BREW):
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$(ANSIBLE):
	brew install ansible

.PHONY: init
init: $(XCODE) $(BREW) $(ANSIBLE)

.PHONY: dryrun
dryrun: init
	ansible-playbook -C -i localhost site.yml

.PHONY: run
run: init
	ansible-playbook -C -i localhost site.yml
