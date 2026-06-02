---@diagnostic disable: undefined-global

local bg = "#f5ede0"
local bg_dim = "#ede6da"
local bg_float = "#f0e8dc"
local bg_highlight = "#e2dace"
local bg_visual = "#dadcd6"
local bg_search = "#e0c890"

local fg = "#3a3630"
local fg_dim = "#5c5750"
local fg_gutter = "#8a8070"
local fg_gutter_active = "#6a6258"

local comment = "#544c40"
local cursor = "#8a6600"
local accent = "#b8522e"

local keyword = "#924800"
local func = "#855700"
local string_c = "#4d5c1a"
local type_c = "#285464"
local operator = "#8f4418"
local number = "#7e4060"
local constant = "#7e4060"
local tag = "#8e4632"
local attribute = "#855700"
local property = "#74501c"
local member = "#883850"
local library_func = "#883850"
local parameter = "#7e4060"
local regex = "#286a48"
local decorator = "#7a5a1c"
local variable_lang = "#8e4632"
local punctuation = "#3a3630"
local punctuation_dim = "#5c5750"
local interpolation = "#924800"

local error_c = "#b03434"
local warn = "#b8522e"
local info = "#285464"
local hint = "#544c40"

local added = "#226414"
local modified = "#2868a0"
local deleted = "#c43040"

local diff_add = "#d2d6be"
local diff_change = "#d3d7d5"
local diff_delete = "#edcec6"
local diff_text = "#c2ccd0"

local border = "#ddd6ca"
local whitespace = "#a09888"

vim.opt.background = "light"
vim.cmd.highlight("clear")
vim.cmd.syntax("reset")

vim.g.colors_name = "warm-burnout-light"

-- Terminal colors
vim.g.terminal_color_0 = "#3a3630"
vim.g.terminal_color_1 = "#b82820"
vim.g.terminal_color_2 = "#2d6a14"
vim.g.terminal_color_3 = "#8a6000"
vim.g.terminal_color_4 = "#2060a0"
vim.g.terminal_color_5 = "#8a3090"
vim.g.terminal_color_6 = "#146858"
vim.g.terminal_color_7 = "#c0b8aa"
vim.g.terminal_color_8 = "#686868"
vim.g.terminal_color_9 = "#c83028"
vim.g.terminal_color_10 = "#3a7a20"
vim.g.terminal_color_11 = "#9a7008"
vim.g.terminal_color_12 = "#2870b0"
vim.g.terminal_color_13 = "#9a38a0"
vim.g.terminal_color_14 = "#208870"
vim.g.terminal_color_15 = "#faf6f0"

-- Editor UI
vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg, bg = bg_float })
vim.api.nvim_set_hl(0, "NormalNC", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "Visual", { bg = bg_visual })
vim.api.nvim_set_hl(0, "VisualNOS", { bg = bg_visual })
vim.api.nvim_set_hl(0, "Cursor", { fg = bg, bg = cursor })
vim.api.nvim_set_hl(0, "lCursor", { fg = bg, bg = cursor })
vim.api.nvim_set_hl(0, "CursorIM", { fg = bg, bg = cursor })
vim.api.nvim_set_hl(0, "CursorLine", { bg = bg_highlight })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = bg_highlight })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = fg_gutter_active })
vim.api.nvim_set_hl(0, "LineNr", { fg = fg_gutter })
vim.api.nvim_set_hl(0, "SignColumn", { fg = fg_gutter, bg = bg })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = bg_dim })
vim.api.nvim_set_hl(0, "Folded", { fg = comment, bg = bg_float })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = fg_gutter })
vim.api.nvim_set_hl(0, "VertSplit", { fg = border })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = border })
vim.api.nvim_set_hl(0, "StatusLine", { fg = fg_dim, bg = bg_dim })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = fg_gutter, bg = bg_dim })
vim.api.nvim_set_hl(0, "TabLine", { fg = fg_dim, bg = bg_dim })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = bg_dim })
vim.api.nvim_set_hl(0, "Pmenu", { fg = fg, bg = bg_float })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = bg_visual })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = bg_float })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = fg_gutter })
vim.api.nvim_set_hl(0, "Search", { fg = fg, bg = bg_search })
vim.api.nvim_set_hl(0, "IncSearch", { fg = bg, bg = cursor })
vim.api.nvim_set_hl(0, "CurSearch", { fg = bg, bg = cursor })
vim.api.nvim_set_hl(0, "Substitute", { fg = bg, bg = error_c })
vim.api.nvim_set_hl(0, "MatchParen", { fg = accent, bold = true })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = whitespace })
vim.api.nvim_set_hl(0, "NonText", { fg = whitespace })
vim.api.nvim_set_hl(0, "Whitespace", { fg = whitespace })
vim.api.nvim_set_hl(0, "WildMenu", { bg = bg_visual })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = border, bg = bg_float })
vim.api.nvim_set_hl(0, "FloatTitle", { fg = fg, bg = bg_float, bold = true })
vim.api.nvim_set_hl(0, "WinBar", { fg = fg, bg = bg })
vim.api.nvim_set_hl(0, "WinBarNC", { fg = fg_dim, bg = bg })
vim.api.nvim_set_hl(0, "Directory", { fg = func })
vim.api.nvim_set_hl(0, "Title", { fg = func, bold = true })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = error_c })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = warn })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = info })
vim.api.nvim_set_hl(0, "Question", { fg = info })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = fg, bold = true })
vim.api.nvim_set_hl(0, "QuickFixLine", { bg = bg_visual })
vim.api.nvim_set_hl(0, "Conceal", { fg = fg_dim })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = bg })

-- Spell
vim.api.nvim_set_hl(0, "SpellBad", { sp = error_c, undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { sp = warn, undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { sp = info, undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { sp = hint, undercurl = true })

-- Diff
vim.api.nvim_set_hl(0, "DiffAdd", { bg = diff_add })
vim.api.nvim_set_hl(0, "DiffChange", { bg = diff_change })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = diff_delete })
vim.api.nvim_set_hl(0, "DiffText", { bg = diff_text })

-- Syntax (legacy groups)
vim.api.nvim_set_hl(0, "Comment", { fg = comment, italic = true })
vim.api.nvim_set_hl(0, "Constant", { fg = constant })
vim.api.nvim_set_hl(0, "String", { fg = string_c })
vim.api.nvim_set_hl(0, "Character", { fg = string_c })
vim.api.nvim_set_hl(0, "Number", { fg = number })
vim.api.nvim_set_hl(0, "Boolean", { fg = number })
vim.api.nvim_set_hl(0, "Float", { fg = number })
vim.api.nvim_set_hl(0, "Identifier", { fg = fg })
vim.api.nvim_set_hl(0, "Function", { fg = func })
vim.api.nvim_set_hl(0, "Statement", { fg = keyword })
vim.api.nvim_set_hl(0, "Conditional", { fg = keyword })
vim.api.nvim_set_hl(0, "Repeat", { fg = keyword })
vim.api.nvim_set_hl(0, "Label", { fg = keyword })
vim.api.nvim_set_hl(0, "Operator", { fg = operator })
vim.api.nvim_set_hl(0, "Keyword", { fg = keyword })
vim.api.nvim_set_hl(0, "Exception", { fg = keyword })
vim.api.nvim_set_hl(0, "PreProc", { fg = keyword })
vim.api.nvim_set_hl(0, "Include", { fg = keyword })
vim.api.nvim_set_hl(0, "Define", { fg = keyword })
vim.api.nvim_set_hl(0, "Macro", { fg = decorator })
vim.api.nvim_set_hl(0, "PreCondit", { fg = keyword })
vim.api.nvim_set_hl(0, "Type", { fg = type_c })
vim.api.nvim_set_hl(0, "StorageClass", { fg = keyword })
vim.api.nvim_set_hl(0, "Structure", { fg = type_c })
vim.api.nvim_set_hl(0, "Typedef", { fg = type_c })
vim.api.nvim_set_hl(0, "Special", { fg = operator })
vim.api.nvim_set_hl(0, "SpecialChar", { fg = regex })
vim.api.nvim_set_hl(0, "Tag", { fg = tag })
vim.api.nvim_set_hl(0, "Delimiter", { fg = punctuation })
vim.api.nvim_set_hl(0, "SpecialComment", { fg = comment, italic = true })
vim.api.nvim_set_hl(0, "Debug", { fg = warn })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "Ignore", { fg = fg_dim })
vim.api.nvim_set_hl(0, "Error", { fg = error_c })
vim.api.nvim_set_hl(0, "Todo", { fg = cursor, bold = true })
vim.api.nvim_set_hl(0, "Added", { fg = added })
vim.api.nvim_set_hl(0, "Changed", { fg = modified })
vim.api.nvim_set_hl(0, "Removed", { fg = deleted })

-- Tree-sitter
vim.api.nvim_set_hl(0, "@comment", { fg = comment, italic = true })
vim.api.nvim_set_hl(0, "@comment.documentation", { fg = comment, italic = true })
vim.api.nvim_set_hl(0, "@comment.todo", { fg = cursor, bold = true })
vim.api.nvim_set_hl(0, "@comment.note", { fg = info, bold = true })
vim.api.nvim_set_hl(0, "@comment.warning", { fg = warn, bold = true })
vim.api.nvim_set_hl(0, "@comment.error", { fg = error_c, bold = true })

vim.api.nvim_set_hl(0, "@string", { fg = string_c })
vim.api.nvim_set_hl(0, "@string.regex", { fg = regex })
vim.api.nvim_set_hl(0, "@string.escape", { fg = regex })
vim.api.nvim_set_hl(0, "@string.special", { fg = regex })
vim.api.nvim_set_hl(0, "@string.special.url", { fg = tag, underline = true })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = string_c })

vim.api.nvim_set_hl(0, "@character", { fg = string_c })
vim.api.nvim_set_hl(0, "@character.special", { fg = regex })

vim.api.nvim_set_hl(0, "@number", { fg = number })
vim.api.nvim_set_hl(0, "@number.float", { fg = number })
vim.api.nvim_set_hl(0, "@boolean", { fg = number })

vim.api.nvim_set_hl(0, "@constant", { fg = constant })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = constant })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = constant })

vim.api.nvim_set_hl(0, "@variable", { fg = fg })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = variable_lang })
vim.api.nvim_set_hl(0, "@variable.member", { fg = member })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = parameter })

vim.api.nvim_set_hl(0, "@function", { fg = func })
vim.api.nvim_set_hl(0, "@function.call", { fg = func })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = library_func })
vim.api.nvim_set_hl(0, "@function.macro", { fg = decorator })
vim.api.nvim_set_hl(0, "@function.method", { fg = func })
vim.api.nvim_set_hl(0, "@function.method.call", { fg = func })

vim.api.nvim_set_hl(0, "@keyword", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = operator })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.type", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.debug", { fg = warn })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = operator })
vim.api.nvim_set_hl(0, "@keyword.directive", { fg = keyword })
vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = keyword })

vim.api.nvim_set_hl(0, "@type", { fg = type_c })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = type_c })
vim.api.nvim_set_hl(0, "@type.definition", { fg = type_c })
vim.api.nvim_set_hl(0, "@type.qualifier", { fg = keyword })

vim.api.nvim_set_hl(0, "@attribute", { fg = decorator })
vim.api.nvim_set_hl(0, "@attribute.builtin", { fg = decorator })

vim.api.nvim_set_hl(0, "@property", { fg = property })

vim.api.nvim_set_hl(0, "@operator", { fg = operator })

vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = punctuation })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = punctuation_dim })
vim.api.nvim_set_hl(0, "@punctuation.special", { fg = interpolation })

vim.api.nvim_set_hl(0, "@tag", { fg = tag })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = tag })
vim.api.nvim_set_hl(0, "@tag.attribute", { fg = attribute })
vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = tag })

vim.api.nvim_set_hl(0, "@constructor", { fg = type_c })

vim.api.nvim_set_hl(0, "@module", { fg = string_c })
vim.api.nvim_set_hl(0, "@module.builtin", { fg = string_c })

vim.api.nvim_set_hl(0, "@label", { fg = keyword })

vim.api.nvim_set_hl(0, "@markup.heading", { fg = string_c, bold = true })
vim.api.nvim_set_hl(0, "@markup.italic", { fg = member, italic = true })
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { strikethrough = true })
vim.api.nvim_set_hl(0, "@markup.underline", { underline = true })
vim.api.nvim_set_hl(0, "@markup.quote", { fg = regex, italic = true })
vim.api.nvim_set_hl(0, "@markup.link", { fg = tag })
vim.api.nvim_set_hl(0, "@markup.link.url", { fg = tag, underline = true })
vim.api.nvim_set_hl(0, "@markup.link.label", { fg = info })
vim.api.nvim_set_hl(0, "@markup.raw", { fg = operator })
vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = fg })
vim.api.nvim_set_hl(0, "@markup.list", { fg = func })
vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = added })
vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = fg_dim })
vim.api.nvim_set_hl(0, "@markup.math", { fg = number })

vim.api.nvim_set_hl(0, "@diff.plus", { fg = added })
vim.api.nvim_set_hl(0, "@diff.minus", { fg = deleted })
vim.api.nvim_set_hl(0, "@diff.delta", { fg = modified })

-- LSP semantic tokens
vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.decorator", { fg = decorator })
vim.api.nvim_set_hl(0, "@lsp.type.enum", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { fg = regex })
vim.api.nvim_set_hl(0, "@lsp.type.function", { fg = func })
vim.api.nvim_set_hl(0, "@lsp.type.interface", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.keyword", { fg = keyword })
vim.api.nvim_set_hl(0, "@lsp.type.macro", { fg = decorator })
vim.api.nvim_set_hl(0, "@lsp.type.method", { fg = func })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { fg = string_c })
vim.api.nvim_set_hl(0, "@lsp.type.number", { fg = number })
vim.api.nvim_set_hl(0, "@lsp.type.operator", { fg = operator })
vim.api.nvim_set_hl(0, "@lsp.type.parameter", { fg = parameter })
vim.api.nvim_set_hl(0, "@lsp.type.property", { fg = property })
vim.api.nvim_set_hl(0, "@lsp.type.regexp", { fg = regex })
vim.api.nvim_set_hl(0, "@lsp.type.string", { fg = string_c })
vim.api.nvim_set_hl(0, "@lsp.type.struct", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.type", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.typeParameter", { fg = type_c })
vim.api.nvim_set_hl(0, "@lsp.type.variable", {})
vim.api.nvim_set_hl(0, "@lsp.type.comment", {})
vim.api.nvim_set_hl(0, "@lsp.mod.defaultLibrary", {})
vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { fg = library_func })
vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", { fg = library_func })
vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { fg = variable_lang })

-- LSP diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = error_c })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = warn })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = info })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = hint })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = added })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = error_c, bg = diff_delete })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = warn, bg = diff_change })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = info, bg = diff_change })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = hint })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = error_c, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = warn, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = info, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = hint, undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = error_c })
vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = warn })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = info })
vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = hint })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = error_c })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = warn })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = info })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = hint })

-- LSP references
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = bg_visual })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = bg_visual })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = bg_visual })
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = cursor })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = comment })
vim.api.nvim_set_hl(0, "LspInlayHint", { fg = fg_gutter, bg = bg_float })
