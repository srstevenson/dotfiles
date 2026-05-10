# dotfiles

This repository contains configuration files, managed using the `dotfiles`
script contained within. Clone the repository, enter the directory, and symlink
the files into place with:

```bash
git clone https://github.com/srstevenson/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./tag-bin/local/bin/dotfiles link
```

This first run will symlink the `dotfiles` script to `~/.local/bin/dotfiles` so
it can be run without a full path in subsequent usage. The following subcommands
are available:

- `dotfiles import`: import dotfiles into the source directory.
- `dotfiles link`: symlink dotfiles to the home directory.
- `dotfiles status`: list all dotfiles and their status.

Tags are stored as directories named `tag-<name>`. Commands that accept `--tag`
accept either the bare tag name (for example, `zsh`) or the full directory name
(for example, `tag-zsh`).

To view usage instructions and the available arguments for each subcommand, run:

```bash
dotfiles <subcommand> --help
```

If manually importing existing dotfiles instead of using the `import`
subcommand, files should be moved from the home directory into a new or existing
tag directory named `tag-<name>`, and the leading dot removed. When linking,
`dotfiles` adds a leading dot to the first path segment before symlinking the
file to `$HOME`. For example, `tag-helix/config/helix/config.toml` will be
symlinked to `~/.config/helix/config.toml`.
