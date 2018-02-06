# ~/.config/fish/config.fish

if not set -q TMPDIR
    set -gx TMPDIR /tmp/$LOGNAME
    mkdir -p -m 700 $TMPDIR
end

if not status is-interactive
    exit
end

set fish_greeting

prepend_to_path ~/.local/bin

set -gx VISUAL nvim
set -gx EDITOR nvim
set -gx LESS FimRX
set -gx GPG_TTY (tty)
set -gx HOMEBREW_NO_ANALYTICS 1

abbr -a la ls -Ahl
abbr -a ll ls -hl
abbr -a ls ls -h

abbr -a cdd cd ~/.dotfiles

abbr -a amm amm --no-remote-logging

if type -q jump
    source (jump shell fish | psub)
end

if test -r ~/miniconda3/etc/fish/conf.d/conda.fish
    source ~/miniconda3/etc/fish/conf.d/conda.fish
    conda activate base
end

if set -q SSH_TTY; and not set -q TMUX; and status is-login; and type -q tmux
    tmux attach; or tmux new
end
