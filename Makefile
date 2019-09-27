SHELL := /bin/zsh

XCODE := /usr/bin/xcode-select
BREW := /usr/local/bin/brew
ANSIBLE := /usr/local/bin/ansible


.PHONY: hellowmake
hellowmake:
	echo $(SHELL)

$(XCODE):
	xcode-select --install

$(BREW): $(XCODE)
	ruby -e "$(shell curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$(ANSIBLE): $(BREW)
	brew install ansible

.PHONY: init
init: $(ANSIBLE)

.PHONY: dryrun
dryrun: init
	ansible-playbook -C -i localhost site.yml

.PHONY: run
run: init
	ansible-playbook -i localhost site.yml
