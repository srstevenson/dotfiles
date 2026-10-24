.PHONY: default
default: help

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  help    - show this help message (default)"
	@echo "  install - symlink dotfiles into place"
	@echo "  fmt     - format code"
	@echo "  check   - lint code and check formatting"

.PHONY: install
install:
	./tag-bin/local/bin/dotfiles link

.PHONY: fmt
fmt:
	uv format --no-project
	shfmt -i 2 -w .

.PHONY: check
check:
	# TODO(srstevenson): Use `uv lint` or similar when available.
	uvx ruff check
	uv check --no-project
	uv format --no-project --check
	shfmt -f=0 . | xargs -0 shellcheck
	shfmt -i 2 -d .
