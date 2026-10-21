# Run `fish_config theme save none` once per machine to persist theme.

fish_add_path -P ~/bin ~/.local/bin /opt/homebrew/bin

status is-interactive; or return

set -g fish_greeting

set -gx VISUAL nvim
set -gx HOMEBREW_NO_ANALYTICS 1

bind ctrl-g edit_command_buffer
