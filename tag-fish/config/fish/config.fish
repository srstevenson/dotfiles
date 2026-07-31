fish_add_path /opt/homebrew/bin ~/.local/bin

if not status is-interactive
    return
end

set -g fish_greeting

set -gx VISUAL hx
