if not status is-interactive
    return
end

set fish_greeting

if test -d /opt/homebrew
    /opt/homebrew/bin/brew shellenv fish | source
    set -gx HOMEBREW_AUTO_UPDATE_SECS 86400
    set -gx HOMEBREW_BUNDLE_FILE_GLOBAL ~/.config/Brewfile
    set -gx HOMEBREW_NO_ANALYTICS 1
end

fish_add_path -P ~/Dropbox/bin ~/.local/bin ~/.cargo/bin

set -gx VISUAL hx
set -gx LESSHISTFILE /dev/null
set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
set -gx PYTHONDONTWRITEBYTECODE 1

set -gx JUMP_HOME ~/.local/state/jump
jump shell fish | source

starship init fish | source
enable_transience
