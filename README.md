# dotfiles

This repository contains my configuration files, managed using the `dfm` script
contained within. After cloning this repository to `$HOME/.dotfiles`, symlink
the dotfiles to the home directory with:

```bash
$HOME/.dotfiles/tag-dfm/local/bin/dfm symlink
```

This initial run will symlink `dfm` to `$HOME/.local/bin/dfm`, so it can be run
without using the full path.

To import a dotfile into the repository and replace the original with a symlink,
run:

```bash
dfm import -t <tag> <path>
```

## pre-commit hooks

[pre-commit] is used to run formatters and linters before committing changes.
Install pre-commit and dependencies with `pacman -Syu pre-commit shfmt` and add
the pre-commit hooks to your local repository with `pre-commit install`.

[pre-commit]: https://pre-commit.com/
