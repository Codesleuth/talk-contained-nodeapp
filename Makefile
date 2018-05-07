.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

dev: ## Run the server locally
	node .

build: ## Build the container
	docker build -t nottsjs/containednode .

run: ## Run the container
	docker run --rm -p 80:8080 --name nottsjs-containednode nottsjs/containednode

clean: ## Remove the image
	docker image rm nottsjs/containednode
