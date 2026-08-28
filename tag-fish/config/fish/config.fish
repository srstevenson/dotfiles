fish_add_path -P ~/bin ~/.local/bin /opt/homebrew/bin

if not status is-interactive
    return
end

set -g fish_greeting

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
set -gx VISUAL hx
