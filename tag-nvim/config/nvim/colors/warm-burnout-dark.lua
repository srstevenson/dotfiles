---@diagnostic disable: undefined-global

local bg = "#1a1510"
local bg_dim = "#14120f"
local bg_float = "#1f1d17"
local bg_highlight = "#222018"
local bg_visual = "#363a3a"
local bg_search = "#4c4126"
-- local bg_search_dim = "#2f2719"

local fg = "#bfbdb6"
local fg_dim = "#ada69c"
local fg_gutter = "#746f67"
local fg_gutter_active = "#a59f96"

local comment = "#b4a89c"
local cursor = "#f5c56e"
local accent = "#b8522e"

local keyword = "#ff8f40"
local func = "#ffb454"
local string_c = "#b4bc78"
local type_c = "#90aec0"
local operator = "#f29668"
local number = "#d4a8b8"
local constant = "#d4a8b8"
local tag = "#dc9e92"
local attribute = "#ffb454"
local property = "#deb074"
local member = "#ec9878"
local library_func = "#ec9878"
local parameter = "#d4a8b8"
local regex = "#96b898"
local decorator = "#e6c08a"
local variable_lang = "#dc9e92"
local punctuation = "#bfbdb6"
local punctuation_dim = "#a6a49d"
local interpolation = "#ff8f40"

local error_c = "#f49090"
local warn = "#b8522e"
local info = "#90aec0"
local hint = "#b4a89c"

local added = "#70bf56"
local modified = "#73b8ff"
local deleted = "#f26d78"

local diff_add = "#242a19"
local diff_change = "#25292d"
local diff_delete = "#34201d"
local diff_text = "#303e4c"

local border = "#26211c"
-- local indent_guide = "#3e3933"
-- local indent_guide_active = "#726c65"
local whitespace = "#746f67"

vim.cmd.highlight("clear")
vim.cmd.syntax("reset")

vim.g.colors_name = "warm-burnout-dark"

-- Terminal colors
vim.g.terminal_color_0 = "#23211b"
vim.g.terminal_color_1 = "#f06b73"
vim.g.terminal_color_2 = "#70bf56"
vim.g.terminal_color_3 = "#fdb04c"
vim.g.terminal_color_4 = "#4fbfff"
vim.g.terminal_color_5 = "#d0a1ff"
vim.g.terminal_color_6 = "#93e2c8"
vim.g.terminal_color_7 = "#c7c7c7"
vim.g.terminal_color_8 = "#686868"
vim.g.terminal_color_9 = "#f07178"
vim.g.terminal_color_10 = "#aad94c"
vim.g.terminal_color_11 = "#ffb454"
vim.g.terminal_color_12 = "#59c2ff"
vim.g.terminal_color_13 = "#d2a6ff"
vim.g.terminal_color_14 = "#95e6cb"
vim.g.terminal_color_15 = "#ffffff"

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
vim.api.nvim_set_hl(0, "ColorColumn", { bg = bg_highlight })
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
