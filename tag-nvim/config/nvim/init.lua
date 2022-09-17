-- ~/.config/nvim/init.lua

vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.linebreak = true
vim.o.list = true
vim.o.path = "**"
vim.o.scrolloff = 4
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.softtabstop = -1
vim.o.spelllang = "en_gb"
vim.o.termguicolors = true

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

vim.api.nvim_create_autocmd("FileType", {
    pattern = "gitcommit,markdown,tex,text",
    callback = function()
        vim.opt_local.spell = true
    end
})

vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank()
    end
})
