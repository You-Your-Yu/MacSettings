SHELL=/bin/zsh

XCODE=/usr/bin/xcode-select
BREW=/usr/local/bin/brew
ANSIBLE=/usr/local/bin/ansible


.PHONY: hellowmake
hellowmake:
	VAR="HELLOW MAKE"
	echo $(VAR)
	echo "$(VAR)"

$(XCODE):
	xcode-select --install

$(BREW): $(XCODE)
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$(ANSIBLE): $(BREW)
	brew install ansible

.PHONY: init
init: $(ANSIBLE)

.PHONY: dryrun
dryrun: init
	ansible-playbook -C -i localhost site.yml

.PHONY: run
run: init
	ansible-playbook -C -i localhost site.yml
