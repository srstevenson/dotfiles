.PHONY: default
default: help

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  help    - show this help message (default)"
	@echo "  install - symlink dotfiles into place"
	@echo "  fmt     - format with uv format"
	@echo "  check   - check with Ruff, uv check, and uv format --check"

.PHONY: install
install:
	./tag-bin/local/bin/dotfiles link

.PHONY: fmt
fmt:
	uv format --no-project

.PHONY: check
check:
	# TODO(srstevenson): Use `uv lint` or similar when available.
	uvx ruff check
	uv check --no-project
	uv format --no-project --check
