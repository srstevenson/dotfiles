.PHONY: default
default: help

.PHONY: help
help:
	@echo "Available targets:"
	@echo "  help    - show this help message (default)"
	@echo "  install - symlink dotfiles into place"

.PHONY: install
install:
	./tag-bin/local/bin/dotfiles link
