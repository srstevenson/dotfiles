---@diagnostic disable: undefined-global

-- Plugins --------------------------------------------------------------------
vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope-ui-select.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

-- Colorscheme ----------------------------------------------------------------
vim.cmd.colorscheme("warm-burnout-dark")

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

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "jjdescription", "markdown" },
  callback = function()
    vim.opt_local.spell = true
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
    source = true,
    virt_text_pos = "eol_right_align",
  },
})

-- Telescope ------------------------------------------------------------------
require("telescope").setup({
  defaults = {
    mappings = { i = { ["<esc>"] = require("telescope.actions").close } }
  },
  extensions = {
    ["ui-select"] = { require("telescope.themes").get_dropdown() }
  }
})
require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<space>f", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<space>b", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<space>j", "<Cmd>Telescope jumplist<CR>")
vim.keymap.set("n", "<space>/", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<space>?", "<Cmd>Telescope commands<CR>")
vim.keymap.set("n", "<space>h", "<Cmd>Telescope help_tags<CR>")

-- LSP ------------------------------------------------------------------------
vim.lsp.enable({ "lua_ls", "ruff", "rumdl", "rust_analyzer", "taplo", "ty" })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "<space>a", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<space>d", "<Cmd>Telescope diagnostics bufnr=0<CR>", opts)
    vim.keymap.set("n", "<space>D", "<Cmd>Telescope diagnostics<CR>", opts)
    vim.keymap.set("n", "<space>k", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<space>r", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<space>s", "<Cmd>Telescope lsp_document_symbols<CR>", opts)
    vim.keymap.set("n", "<space>S", "<Cmd>Telescope lsp_workspace_symbols<CR>", opts)
    vim.keymap.set("n", "gd", "<Cmd>Telescope lsp_definitions<CR>", opts)
    vim.keymap.set("n", "gi", "<Cmd>Telescope lsp_implementations<CR>", opts)
    vim.keymap.set("n", "gr", "<Cmd>Telescope lsp_references<CR>", opts)
    vim.keymap.set("n", "gy", "<Cmd>Telescope lsp_type_definitions<CR>", opts)

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = args.buf,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
})
