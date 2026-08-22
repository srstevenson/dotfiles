fish_add_path -P /opt/homebrew/bin ~/.local/bin

if not status is-interactive
    return
end

set -g fish_greeting

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
set -gx VISUAL hx
