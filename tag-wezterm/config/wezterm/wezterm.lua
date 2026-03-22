local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrains Mono")
config.font_size = 16

config.color_scheme = "thalk"

config.default_cursor_style = "BlinkingBar"
config.hide_tab_bar_if_only_one_tab = true
config.native_macos_fullscreen_mode = true
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false

config.leader = { mods = "CTRL", key = "b" }
config.keys = {
  { mods = "CMD", key = "Enter", action = wezterm.action.ToggleFullScreen },
  { mods = "LEADER", key = "c", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
  { mods = "LEADER", key = "n", action = wezterm.action.ActivateTabRelative(1) },
  { mods = "LEADER", key = "p", action = wezterm.action.ActivateTabRelative(-1) },
  { mods = "LEADER", key = "s", action = wezterm.action.SplitPane({ direction = "Down" }) },
  { mods = "LEADER", key = "v", action = wezterm.action.SplitPane({ direction = "Right" }) },
  { mods = "LEADER", key = "h", action = wezterm.action.ActivatePaneDirection("Left") },
  { mods = "LEADER", key = "j", action = wezterm.action.ActivatePaneDirection("Down") },
  { mods = "LEADER", key = "k", action = wezterm.action.ActivatePaneDirection("Up") },
  { mods = "LEADER", key = "l", action = wezterm.action.ActivatePaneDirection("Right") },
}

return config
