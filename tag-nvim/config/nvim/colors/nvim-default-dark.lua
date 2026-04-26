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

vim.opt.background = "dark"
vim.g.colors_name = "nvim-default-dark"

-- Normal
vim.api.nvim_set_hl(0, "Normal", { fg = LightGrey2, bg = DarkGrey2 })

-- UI
vim.api.nvim_set_hl(0, "Added", { fg = LightGreen })
vim.api.nvim_set_hl(0, "Changed", { fg = LightCyan })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "Conceal", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "CurSearch", { fg = DarkGrey1, bg = LightYellow })
vim.api.nvim_set_hl(0, "Cursor", { fg = "bg", bg = "fg" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })
vim.api.nvim_set_hl(0, "DiffAdd", { fg = LightGrey1, bg = DarkGreen })
vim.api.nvim_set_hl(0, "DiffChange", { fg = LightGrey1, bg = DarkGrey4 })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = LightRed, bold = true })
vim.api.nvim_set_hl(0, "DiffText", { fg = LightGrey1, bg = DarkCyan })
vim.api.nvim_set_hl(0, "Directory", { fg = LightCyan })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = LightRed })
vim.api.nvim_set_hl(0, "FloatShadow", { bg = DarkGrey4, blend = 80 })
vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = DarkGrey4, blend = 100 })
vim.api.nvim_set_hl(0, "Folded", { fg = LightGrey4, bg = DarkGrey1 })
vim.api.nvim_set_hl(0, "LineNr", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "MatchParen", { bg = DarkGrey4, bold = true })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = LightGreen })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = LightCyan })
vim.api.nvim_set_hl(0, "NonText", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = DarkGrey1 })
vim.api.nvim_set_hl(0, "OkMsg", { fg = LightGreen })
vim.api.nvim_set_hl(0, "Pmenu", { bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "PmenuMatch", { bold = true })
vim.api.nvim_set_hl(0, "PmenuMatchSel", { bold = true })
vim.api.nvim_set_hl(0, "PmenuSel", { reverse = true, blend = 0 })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = DarkGrey4 })
vim.api.nvim_set_hl(0, "Question", { fg = LightCyan })
vim.api.nvim_set_hl(0, "QuickFixLine", { fg = LightCyan })
vim.api.nvim_set_hl(0, "RedrawDebugClear", { bg = DarkYellow })
vim.api.nvim_set_hl(0, "RedrawDebugComposed", { bg = DarkGreen })
vim.api.nvim_set_hl(0, "RedrawDebugNormal", { reverse = true })
vim.api.nvim_set_hl(0, "RedrawDebugRecompose", { bg = DarkRed })
vim.api.nvim_set_hl(0, "Removed", { fg = LightRed })
vim.api.nvim_set_hl(0, "Search", { fg = LightGrey1, bg = DarkYellow })
vim.api.nvim_set_hl(0, "SignColumn", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = LightRed })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = LightYellow })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true, sp = LightGreen })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true, sp = LightCyan })
vim.api.nvim_set_hl(0, "StatusLine", { fg = LightGrey2, bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = DarkGrey4, bg = DarkGrey3 })
vim.api.nvim_set_hl(0, "TabLineSel", { bold = true })
vim.api.nvim_set_hl(0, "TermCursor", { reverse = true })
vim.api.nvim_set_hl(0, "Title", { fg = LightGrey2, bold = true })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Visual", { bg = DarkGrey4 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = LightYellow })
vim.api.nvim_set_hl(0, "WinBar", { fg = LightGrey4, bg = DarkGrey1, bold = true })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = LightGrey4, bg = DarkGrey1 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = DarkGrey4 })
vim.api.nvim_set_hl(0, "lCursor", { fg = "bg", bg = "fg" })

-- Syntax
vim.api.nvim_set_hl(0, "Comment", { fg = LightGrey4 })
vim.api.nvim_set_hl(0, "Constant", { fg = LightGrey2 })
vim.api.nvim_set_hl(0, "Delimiter", { fg = LightGrey2 })
vim.api.nvim_set_hl(0, "Error", { fg = LightGrey1, bg = DarkRed })
vim.api.nvim_set_hl(0, "Function", { fg = LightCyan })
vim.api.nvim_set_hl(0, "Identifier", { fg = LightBlue })
vim.api.nvim_set_hl(0, "Operator", { fg = LightGrey2 })
vim.api.nvim_set_hl(0, "PreProc", { fg = LightGrey2 })
vim.api.nvim_set_hl(0, "Special", { fg = LightCyan })
vim.api.nvim_set_hl(0, "Statement", { fg = LightGrey2, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = LightGreen })
vim.api.nvim_set_hl(0, "Todo", { fg = LightGrey2, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = LightGrey2 })
vim.api.nvim_set_hl(0, "@variable", { fg = LightGrey2 })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticDeprecated", { strikethrough = true, sp = LightRed })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = LightRed })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = LightBlue })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = LightCyan })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = LightGreen })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = LightRed })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = LightBlue })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = LightCyan })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { undercurl = true, sp = LightGreen })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = LightYellow })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = LightYellow })
