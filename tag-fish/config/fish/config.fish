if not status is-interactive
    return
end

set fish_greeting

fish_add_path -P ~/bin ~/.local/bin ~/.cargo/bin

set -gx VISUAL hx
set -gx DFT_BACKGROUND light

starship init fish | source
enable_transience

# if test -n "$SSH_CONNECTION" -a -z "$TMUX" -a -z "$ZELLIJ"
#     tmux attach; or tmux new-session
# end

if test -n "$SSH_CONNECTION" -a -z "$ZELLIJ" -a -z "$TMUX"
    zellij attach -c
end
