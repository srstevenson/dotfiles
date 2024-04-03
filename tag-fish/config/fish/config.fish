if not status is-interactive
    return
end

set fish_greeting

test -d /opt/homebrew; and /opt/homebrew/bin/brew shellenv fish | source

fish_add_path -P ~/bin ~/.local/bin ~/.cargo/bin

set -gx VISUAL hx
set -gx DFT_BACKGROUND light

starship init fish | source
enable_transience

if test -n "$SSH_CONNECTION" -a -z "$ZELLIJ" -a -z "$TMUX"
    zellij attach -c main
end
