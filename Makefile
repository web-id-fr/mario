.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Installing homebrew and ansible if needed, then running the ansible playbook
	bin/install-brew.sh
	bin/install-ansible.sh
	make mario

mario: ## Just run the playbook
	ansible-playbook -i hosts mario-playbook.yml

uninstall: ## Remove ansible and homebrew
	bin/uninstall.sh
