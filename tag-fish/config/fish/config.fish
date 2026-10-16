fish_add_path -P ~/bin ~/.local/bin /opt/homebrew/bin

status is-interactive; or return

fish_config theme choose none

set -g fish_greeting

set -gx RIPGREP_CONFIG_PATH ~/.config/ripgrep/config
set -gx VISUAL hx
set -gx HOMEBREW_NO_ANALYTICS 1

bind ctrl-g edit_command_buffer
