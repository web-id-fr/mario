.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Installing dependencies if needed, then running the ansible playbook
	make preinstall
	make mario

preinstall: ## Installing homebrew and ansible if needed
	bin/install-brew.sh
	bin/install-ansible.sh

config: ## Copy configuration files from dist
	cp -i mario-playbook.yml.dist mario-playbook.yml | true 
	cp -i mario-configuration.yml.dist mario-configuration.yml | true

mario: ## Just run the playbook
	ansible-playbook mario-playbook.yml

uninstall: ## Remove ansible and homebrew
	bin/uninstall.sh
