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

vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank()
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "gitcommit,markdown,tex",
    callback = function()
        vim.opt_local.spell = true
    end
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        local view = vim.fn.winsaveview()
        vim.cmd [[ %s/\s\+$//e ]]
        vim.cmd [[ %s/\%^\n\+//e ]]
        vim.cmd [[ %s/\n\+\%$//e ]]
        vim.fn.winrestview(view)
    end
})

vim.api.nvim_create_user_command("Delete", function()
        local filename = vim.fn.expand("%")
        vim.fn.delete(filename)
        vim.api.nvim_buf_delete(0, { force = true })
        vim.api.nvim_echo({{ "Deleted " .. filename }}, false, {})
    end,
    {}
)
