-- Plugins --------------------------------------------------------------------
vim.pack.add({
  "https://github.com/juniorsundar/refer.nvim",
  "https://github.com/neovim/nvim-lspconfig",
})

-- Colorscheme ----------------------------------------------------------------
vim.cmd.colorscheme("tomorrow-classic")

-- Options --------------------------------------------------------------------
vim.opt.colorcolumn = { 80 }
vim.opt.confirm = true
vim.opt.expandtab = true
vim.opt.grepprg = "rg --vimgrep --hidden --glob=!.git"
vim.opt.ignorecase = true
vim.opt.linebreak = true
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "⍽" }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 2
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.softtabstop = -1
vim.opt.spelllang = "en_gb"
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Keymaps --------------------------------------------------------------------
vim.keymap.set({ "n", "v" }, "<space>y", '"+y')
vim.keymap.set("n", "<space>Y", "<Cmd>%y+<CR>")
vim.keymap.set("n", "<space>p", '"+p')

-- Autocmds -------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[ %s/\s\+$//e ]])
    vim.cmd([[ %s/\n\+\%$//e ]])
    vim.fn.winrestview(view)
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Diagnostics ----------------------------------------------------------------
vim.diagnostic.config({
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "●",
      [vim.diagnostic.severity.HINT] = "●",
      [vim.diagnostic.severity.INFO] = "●",
      [vim.diagnostic.severity.WARN] = "●",
    },
  },
  virtual_text = {
    current_line = true,
    source = "if_many",
    virt_text_pos = "eol_right_align",
  },
})

-- Picker ---------------------------------------------------------------------
require("refer").setup()
require("refer").setup_ui_select()

vim.keymap.set("n", "<space>f", "<Cmd>Refer Files<CR>")
vim.keymap.set("n", "<space>b", "<Cmd>Refer Buffers<CR>")
vim.keymap.set("n", "<space>/", "<Cmd>Refer Grep<CR>")
vim.keymap.set("n", "<space>?", "<Cmd>Refer Commands<CR>")
vim.keymap.set("n", "<space>h", "<Cmd>Refer Help<CR>")

-- LSP ------------------------------------------------------------------------
vim.lsp.enable({ "ruff", "ty" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<space>k", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<space>r", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "gd", "<Cmd>Refer Definitions<CR>", opts)
    vim.keymap.set("n", "gi", "<Cmd>Refer Implementations<CR>", opts)
    vim.keymap.set("n", "gr", "<Cmd>Refer References<CR>", opts)
    vim.keymap.set("n", "gs", "<Cmd>Refer Symbols<CR>", opts)
    vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
})
