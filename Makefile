.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: ## Installing all softwares and dependencies
	bin/pre-install.sh
	ansible-playbook -i hosts setup-mac-os.yml

uninstall: ## Remove evrything for a clean installation
	bin/uninstall.sh
