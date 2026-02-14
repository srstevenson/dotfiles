vim.cmd.colorscheme("thalk")

vim.opt.colorcolumn = { 80 }
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "⍽" }
vim.opt.number = true
vim.opt.path:append("**")
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.softtabstop = -1
vim.opt.spelllang = "en_gb"
vim.opt.tabstop = 4

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("filetype-jjdescription", { clear = true }),
  pattern = "jjdescription",
  callback = function()
    vim.opt_local.colorcolumn = { 50, 72 }
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = vim.api.nvim_create_augroup("shebang-uv-run-python", { clear = true }),
  pattern = "*",
  callback = function(args)
    local line = vim.fn.getline(1)
    if line:match("^#!") and line:match("uv%s+run") then
      vim.bo[args.buf].filetype = "python"
    end
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("buffer-trim-whitespace", { clear = true }),
  pattern = "*",
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[ keepjumps keeppatterns %s/\s\+$//e ]])
    vim.cmd([[ keepjumps keeppatterns %s/\n\+\%$//e ]])
    vim.fn.winrestview(view)
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("text-yank-highlight", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.keymap.set({ "n", "v" }, "<space>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<space>p", '"+p', { desc = "Paste from system clipboard" })
