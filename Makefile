.PHONY: dryrun
dryrun:
	ansible-playbook -C -i localhost site.yml --ask-become-pass

.PHONY: run
run:
	ansible-playbook -i localhost site.yml --ask-become-pass
