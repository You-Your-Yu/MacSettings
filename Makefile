.PHONY: dryrun
dryrun:
	ansible-playbook -C -i localhost site.yml

.PHONY: run
run:
	ansible-playbook -i localhost site.yml
