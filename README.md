# dotfiles

This repository contains my configuration files, managed using the `dotfiles`
script contained within. Clone the repository, enter the directory, and symlink
the files into place with:

```bash
jj git clone --colocate https://github.com/srstevenson/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./tag-bin/local/bin/dotfiles link
```

This first run will symlink the `dotfiles` script to `~/.local/bin/dotfiles` so
it can be run without a full path in subsequent usage. The following subcommands
are available:

- `dotfiles import`: import dotfiles into the source directory.
- `dotfiles unlink`: unlink dotfiles and move them back to the home directory.
- `dotfiles link`: symlink dotfiles to the home directory.
- `dotfiles status`: list all dotfiles and their status.

To view usage instructions and the available arguments for each subcommand, run:

```bash
dotfiles <subcommand> --help
```

By default, `dotfiles` will symlink files from
`~/dev/github.com/srstevenson/dotfiles` if it exists, falling back to
`~/.dotfiles` if it does not . You can override the directory explicitly with
`--dotfiles-dir`:

```bash
dotfiles --dotfiles-dir ~/another/path status
```

If manually importing existing dotfiles instead of using the `import`
subcommand, files should be moved from the home directory into a new or existing
tag directory named `tag-<name>`, and the leading dot removed. When linking,
`dotfiles` adds a leading dot to the first path segment before symlinking the
file to `$HOME`. For example, `tag-helix/config/helix/config.toml` will be
symlinked to `~/.config/helix/config.toml`.
