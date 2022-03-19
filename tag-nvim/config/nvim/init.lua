-- ~/.config/nvim/init.lua

vim.o.background = "light"
vim.o.colorcolumn = "80"
vim.o.expandtab = true
vim.o.foldmethod = "marker"
vim.o.ignorecase = true
vim.o.linebreak = true
vim.o.list = true
vim.o.number = true
vim.o.path = "**"
vim.o.relativenumber = true
vim.o.scrolloff = 3
vim.o.shiftwidth = 4
vim.o.showbreak = "↪ "
vim.o.smartcase = true
vim.o.softtabstop = -1
vim.o.spelllang = "en_gb"
vim.o.splitbelow = true
vim.o.splitright = true

if vim.fn.executable("rg") then
    vim.o.grepformat = "%f:%l:%c:%m"
    vim.o.grepprg = "rg --vimgrep"
end

local listchars = { nbsp = "␣", trail = "·", precedes = "⟨", extends = "⟩", tab = "⇥ " }
for name, char in pairs(listchars) do
    vim.opt.listchars:append(name .. ":" .. char)
end

vim.cmd("colorscheme base16")

local function define_autocmds(group, definitions)
    vim.cmd("augroup " .. group)
    vim.cmd("autocmd!")
    for _, definition in ipairs(definitions) do
        vim.cmd(table.concat(vim.tbl_flatten{ "autocmd", definition }, " "))
    end
    vim.cmd("augroup end")
end

define_autocmds("highlight_on_yank", {
    { "TextYankPost", "*", "lua vim.highlight.on_yank()" },
})

define_autocmds("spellcheck", {
    { "FileType", "markdown,tex", "setlocal spell" }
})

function cleanup_whitespace()
    local view = vim.fn.winsaveview()
    vim.cmd [[ %s/\s\+$//e ]]
    vim.cmd [[ %s/\%^\n\+//e ]]
    vim.cmd [[ %s/\n\+\%$//e ]]
    vim.fn.winrestview(view)
end

define_autocmds("whitespace", {
    { "BufWritePre", "*", "lua cleanup_whitespace()" }
})

function delete_current_file()
    local filename = vim.fn.expand("%")
    vim.fn.delete(filename)
    vim.api.nvim_buf_delete(0, { force = true })
    vim.api.nvim_echo({{ "Deleted " .. filename }}, false, {})
end

vim.cmd("command! Delete lua delete_current_file()")
