if not status is-interactive
    return
end

set fish_greeting
fish_add_path -P ~/bin ~/.local/bin ~/.cargo/bin
set -gx VISUAL hx

starship init fish | source

if test -n "$SSH_CONNECTION" -a -z "$TMUX"
    tmux attach; or tmux new-session
end
