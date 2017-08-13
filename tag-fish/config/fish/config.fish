# ~/.config/fish/config.fish

status -i; or exit

set fish_greeting

prepend_to_path ~/miniconda3/bin
prepend_to_path ~/go/bin
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

test -r ~/miniconda3/etc/fish/conf.d/conda.fish
and source ~/miniconda3/etc/fish/conf.d/conda.fish

set -q SSH_TTY
and not set -q TMUX
and status --is-login
and type -q tmux
and tmux new -As default
