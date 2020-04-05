.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

pop: ## Install Pop!_OS on localhost
	sudo ansible-playbook -i hosts setup-pop-os.yml

dump-tilix: ## Dump terminal configuration
	dconf dump /com/gexperts/Tilix/ > roles/software/tilix/files/tilix.dconf