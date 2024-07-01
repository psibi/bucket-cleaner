GIT_SHA := `git rev-parse HEAD`
IMAGE := "ghcr.io/psibi/bucket-cleaner"

# List all recipes
default:
	just --list --unsorted

# Build image
build:
	docker image build . -f Dockerfile -t {{IMAGE}}:{{GIT_SHA}}

# Push image
push:
	docker push {{IMAGE}}:{{GIT_SHA}}

# Exec image
exec:
	docker run --entrypoint=bash -it {{IMAGE}}:{{GIT_SHA}}
