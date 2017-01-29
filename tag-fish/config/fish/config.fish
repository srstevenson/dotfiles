# ~/.config/fish/config.fish

set -e fish_greeting

prepend_to_path ~/.local/texlive/bin/x86_64-darwin
prepend_to_path ~/.local/homebrew/bin
prepend_to_path ~/.local/miniconda/bin
prepend_to_path ~/.local/bin

set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx LESS FimRX
set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx HOMEBREW_NO_GITHUB_API 1

abbr -a la ls -Ahl
abbr -a ll ls -hl
abbr -a ls ls -h

abbr -a cdd cd ~/.dotfiles

type -q jump
and source (jump shell fish | psub)

test -r ~/.local/miniconda/etc/fish/conf.d/conda.fish
and source ~/.local/miniconda/etc/fish/conf.d/conda.fish

set -q SSH_TTY
and not set -q TMUX
and status --is-login
and type -q tmux
and tmux new -As default
