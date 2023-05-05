# To do stuff with make, you type `make` in a directory that has a file called
# "Makefile".  You can also type `make -f <makefile>` to use a different filename.
#
# A Makefile is a collection of rules. Each rule is a recipe to do a specific
# thing, sort of like a grunt task or an npm package.json script.
#
# A rule looks like this:
#
# <target>: <prerequisites...>
# 	<commands>
#
# The "target" is required. The prerequisites are optional, and the commands
# are also optional, but you have to have one or the other.
#
# Type `make` to show the available targets and a description of each.
#
.DEFAULT_GOAL := help
.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Formatting

.PHONY: format-black
format-black: ## black (code formatter)
	@poe format-black

.PHONY: format-isort
format-isort: ## isort (import formatter)
	@poe format-isort

.PHONY: format
format: format-black format-isort ## run all formatters

##@ Linting

.PHONY: lint-black
lint-black: ## black in linting mode
	@poe lint-black

.PHONY: lint-isort
lint-isort: ## isort in linting mode
	@poe lint-isort

.PHONY: lint-flake8
lint-flake8: ## flake8 (linter)
	@poe lint-flake8

.PHONY: lint-mypy
lint-mypy: ## mypy (static-type checker)
	@poe lint-mypy

.PHONY: lint-mypy-report
lint-mypy-report: ## run mypy & create report
	@poe lint-mypy-report

lint: lint-black lint-isort lint-flake8 ## run all linters

##@ Running & Debugging

.PHONY: run
run: ## run the main script
	@poe run

##@ Testing

.PHONY: tests
tests: ## run tests with pytest
	@poe tests

.PHONY: tests-cov
tests-cov: ## run tests with pytest and show coverage (terminal + html)
	@poe tests-cov

.PHONY: tests-cov-fail
tests-cov-fail: ## run unit tests with pytest and show coverage (terminal + html) & fail if coverage too low & create files for CI
	@poe tests-cov-fail

##@ Jupyter-Book

book-build: ## build documentation locally
	@poetry run jupyter-book build book

book-build-all: ## build all documentation locally
	@poetry run jupyter-book build book --all

book-publish: ## publish documentation to "gh-pages" branch
	@poetry run ghp-import -n -p -f book/_build/html

book-deploy: ## build & publish documentation to "gh-pages" branch
	book-build book-publish

##@ Clean-up

clean-cov: ## remove output files from pytest & coverage
	@poe clean-cov

clean-docs: ## remove output files from mkdocs
	@poe clean-docs

clean-pycache: ## remove __pycache__ directories
	@poe clean-pycache

clean: clean-cov clean-book-build clean-pycache ## run all clean commands

##@ Releases

version: ## returns the current version
	@poe version

next-version: ## returns the next version
	@poe next-version

changelog: ## returns the current changelog
	@poe changelog

next-changelog: ## returns the next changelog
	@poe next-changelog

release-noop: ## release without changing anything
	@poe release-noop

release-ci: ## release in CI
	@poe release-ci

prerelease-noop: ## release a pre-release without changing anything
	@poe prerelease-noop

prerelease-ci: ## release a pre-release in CI
	@poe prerelease-ci

build: ## build the package
	@poetry build

##@ Git Branches

show-branches: ## show all branches
	@poe show-branches

dev-checkout: ## checkout the dev branch
	@branch=$(shell echo $${branch:-"dev"}) && \
	    git show-branch --list | grep -q $${branch} && \
		git checkout $${branch}

dev-checkout-upstream: ## create and checkout the dev branch, and set the upstream
	@branch=$(shell echo $${branch:-"dev"}) && \
		git checkout -B $${branch} && \
		git push --set-upstream origin $${branch} || true

main-checkout: ## checkout the main branch
	@git checkout main

##@ Utilities

large-files: ## show the 20 largest files in the repo
	@find . -printf '%s %p\n'| sort -nr | head -20

disk-usage: ## show the disk usage of the repo
	@du -h -d 2 .

git-sizer: ## run git-sizer
	@git-sizer --verbose

##@ Setup

install-pipx: ## install pipx (pre-requisite for external tools)
	@commmand -v pipx &> /dev/null || pip install --user pipx || true

install-copier: install-pipx ## install copier (pre-requisite for init-project)
	@command -v copier &> /dev/null || pipx install copier || true

install-poetry: install-pipx ## install poetry (pre-requisite for install)
	@command -v poetry &> /dev/null || pipx install poetry || true

install-poe: install-poetry ## install poetry (pre-requisite for install)
	@command -v poe &> /dev/null || pipx install poethepoet || true

install-commitzen: install-poe ## install commitzen (pre-requisite for commit)
	@command -v cz &> /dev/null || pipx install commitizen || true

install-precommit: install-commitzen ## install pre-commit
	@command -v pre-commit &> /dev/null || pipx install pre-commit || true

install-precommit-hooks: install-precommit ## install pre-commit hooks
	@pre-commit install

install: ## install the package
	@poetry install --without dev

update: ## update the package
	@poetry update

install-dev: ## install the package in development mode
	@poetry install --with dev

initialize: install-precommit ## install pre-commit hooks
	@pre-commit install

init-project: install-copier install-precommit-hooks ## initialize the project (Warning: do this only once!)
	@copier --answers-file .copier-config.yaml --vcs-ref=HEAD gh:entelecheia/hyperfast-python-template .

reinit-project: install-copier ## reinitialize the project (Warning: this may overwrite existing files!)
	@bash -c 'args=(); while IFS= read -r file; do args+=("--skip" "$$file"); done < .copierignore; copier "$${args[@]}" --answers-file .copier-config.yaml --vcs-ref=HEAD . .'

reinit-project-force: install-copier ## initialize the project ignoring existing files (Warning: this will overwrite existing files!)
	@bash -c 'args=(); while IFS= read -r file; do args+=("--skip" "$$file"); done < .copierignore; copier "$${args[@]}" --answers-file .copier-config.yaml --force --vcs-ref=HEAD . .'
