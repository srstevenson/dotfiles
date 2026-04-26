local DarkGrey1 = "#07080d"
local DarkGrey2 = "#14161b"
local DarkGrey3 = "#2c2e33"
local DarkGrey4 = "#4f5258"
local DarkRed = "#590008"
local DarkGreen = "#005523"
local DarkYellow = "#6b5300"
local DarkBlue = "#004c73"
local DarkCyan = "#007373"
local DarkMagenta = "#470045"

local LightGrey1 = "#eef1f8"
local LightGrey2 = "#e0e2ea"
local LightGrey3 = "#c4c6cd"
local LightGrey4 = "#9b9ea4"
local LightRed = "#ffc0b9"
local LightGreen = "#b3f6c0"
local LightYellow = "#fce094"
local LightBlue = "#a6dbff"
local LightCyan = "#8cf8f7"
local LightMagenta = "#ffcaff"

vim.cmd.highlight("clear")
vim.cmd.syntax("reset")

vim.opt.background = "light"
vim.g.colors_name = "nvim-default-light"

-- Normal
vim.api.nvim_set_hl(0, "Normal", { fg = DarkGrey2, bg = LightGrey2 })

-- UI
vim.api.nvim_set_hl(0, "Added", { fg = DarkGreen })
vim.api.nvim_set_hl(0, "Changed", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = LightGrey3 })
vim.api.nvim_set_hl(0, "Conceal", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "CurSearch", { fg = LightGrey1, bg = DarkYellow })
vim.api.nvim_set_hl(0, "Cursor", { fg = "bg", bg = "fg" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = LightGrey3 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = LightGrey3 })
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = DarkGrey1, bg = LightGreen })
vim.api.nvim_set_hl(0, "DiffChange", { fg = DarkGrey1, bg = LightGrey4 })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = DarkRed, bold = true })
vim.api.nvim_set_hl(0, "DiffText", { fg = DarkGrey1, bg = LightCyan })
vim.api.nvim_set_hl(0, "Directory", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = DarkRed })
vim.api.nvim_set_hl(0, "FloatShadow", { bg = LightGrey4, blend = 80 })
vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = LightGrey4, blend = 100 })
vim.api.nvim_set_hl(0, "Folded", { fg = DarkGrey4, bg = LightGrey1 })
vim.api.nvim_set_hl(0, "LineNr", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "MatchParen", { bg = LightGrey4, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = DarkGreen })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "NonText", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = LightGrey1 })
vim.api.nvim_set_hl(0, "OkMsg", { fg = DarkGreen })
vim.api.nvim_set_hl(0, "Pmenu", { bg = LightGrey3 })
vim.api.nvim_set_hl(0, "PmenuMatch", { bold = true })
vim.api.nvim_set_hl(0, "PmenuMatchSel", { bold = true })
vim.api.nvim_set_hl(0, "PmenuSel", { reverse = true, blend = 0 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = LightGrey4 })
vim.api.nvim_set_hl(0, "Question", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "QuickFixLine", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "RedrawDebugClear", { bg = LightYellow })
vim.api.nvim_set_hl(0, "RedrawDebugComposed", { bg = LightGreen })
vim.api.nvim_set_hl(0, "RedrawDebugNormal", { reverse = true })
vim.api.nvim_set_hl(0, "RedrawDebugRecompose", { bg = LightRed })
vim.api.nvim_set_hl(0, "Removed", { fg = DarkRed })
vim.api.nvim_set_hl(0, "Search", { fg = DarkGrey1, bg = LightYellow })
vim.api.nvim_set_hl(0, "SignColumn", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = DarkRed })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = DarkYellow })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = DarkGreen })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = DarkCyan })
vim.api.nvim_set_hl(0, "StatusLine", { fg = DarkGrey2, bg = LightGrey3 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = DarkGrey4, bg = LightGrey3 })
vim.api.nvim_set_hl(0, "TabLineSel", { bold = true })
vim.api.nvim_set_hl(0, "TermCursor", { reverse = true })
vim.api.nvim_set_hl(0, "Title", { fg = DarkGrey2, bold = true })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Visual", { bg = LightGrey4 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = DarkYellow })
vim.api.nvim_set_hl(0, "WinBar", { fg = DarkGrey4, bg = LightGrey1, bold = true })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = DarkGrey4, bg = LightGrey1 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "lCursor", { fg = "bg", bg = "fg" })

-- Syntax
vim.api.nvim_set_hl(0, "Comment", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "Constant", { fg = DarkGrey2 })
vim.api.nvim_set_hl(0, "Delimiter", { fg = DarkGrey2 })
vim.api.nvim_set_hl(0, "Error", { fg = DarkGrey1, bg = LightRed })
vim.api.nvim_set_hl(0, "Function", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "Identifier", { fg = DarkBlue })
vim.api.nvim_set_hl(0, "Operator", { fg = DarkGrey2 })
vim.api.nvim_set_hl(0, "PreProc", { fg = DarkGrey2 })
vim.api.nvim_set_hl(0, "Special", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "Statement", { fg = DarkGrey2, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = DarkGreen })
vim.api.nvim_set_hl(0, "Todo", { fg = DarkGrey2, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = DarkGrey2 })
vim.api.nvim_set_hl(0, "@variable", { fg = DarkGrey2 })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { strikethrough = true, sp = DarkRed })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = DarkRed })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = DarkBlue })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = DarkCyan })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = DarkGreen })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = DarkRed })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = DarkBlue })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = DarkCyan })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { undercurl = true, sp = DarkGreen })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = DarkYellow })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = DarkYellow })
