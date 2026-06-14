---@diagnostic disable: undefined-global

local user_autocmds = vim.api.nvim_create_augroup("UserAutocmds", { clear = true })

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

-- Colourscheme ---------------------------------------------------------------
local function dark_mode_cmd()
  if vim.fn.has("mac") == 1 then
    return { "defaults", "read", "-g", "AppleInterfaceStyle" }, function(result)
      return vim.trim(result.stdout) == "Dark"
    end
  end
  if vim.fn.executable("gsettings") == 1 then
    return { "gsettings", "get", "org.gnome.desktop.interface", "color-scheme" }, function(result)
      return result.code ~= 0 or result.stdout:find("prefer%-dark") ~= nil
    end
  end
end

local function sync_background(async)
  local cmd, parse = dark_mode_cmd()
  local apply = function(dark)
    local bg = dark and "dark" or "light"
    if vim.o.background ~= bg then
      vim.o.background = bg
    end
  end
  if not cmd then
    apply(true)
  elseif async then
    vim.system(cmd, { text = true }, vim.schedule_wrap(function(result)
      apply(parse(result))
    end))
  else
    apply(parse(vim.system(cmd, { text = true }):wait()))
  end
end

vim.api.nvim_create_autocmd("FocusGained", {
  group = user_autocmds,
  callback = function()
    sync_background(true)
  end,
})

sync_background(false)
vim.cmd.colorscheme("warm-burnout")

-- Buffers --------------------------------------------------------------------
vim.api.nvim_create_autocmd("BufWritePre", {
  group = user_autocmds,
  pattern = "*",
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd([[ %s/\s\+$//e ]])
    vim.cmd([[ %s/\n\+\%$//e ]])
    vim.fn.winrestview(view)
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = user_autocmds,
  pattern = { "gitcommit", "jjdescription", "markdown" },
  callback = function(args)
    if vim.bo[args.buf].buftype ~= "nofile" then
      vim.opt_local.spell = true
    end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = user_autocmds,
  callback = function()
    vim.hl.on_yank()
  end,
})

-- LSP ------------------------------------------------------------------------
vim.pack.add({ "https://github.com/neovim/nvim-lspconfig" })
vim.lsp.enable({ "lua_ls", "ruff", "rumdl", "rust_analyzer", "taplo", "ty" })

vim.keymap.set("n", "<space>i", function()
  local enable = not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 })
  vim.lsp.inlay_hint.enable(enable, { bufnr = 0 })
  vim.notify("Inlay hints " .. (enable and "enabled" or "disabled"))
end, { desc = "Toggle inlay hints" })

vim.api.nvim_create_autocmd("LspAttach", {
  group = user_autocmds,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    local function map(lhs, rhs, desc)
      vim.keymap.set("n", lhs, rhs, { buffer = args.buf, desc = desc })
    end

    map("<space>a", vim.lsp.buf.code_action, "Perform a code action")
    map("<space>d", "<Cmd>Telescope diagnostics bufnr=0<CR>", "Find buffer diagnostics")
    map("<space>D", "<Cmd>Telescope diagnostics<CR>", "Find workspace diagnostics")
    map("<space>k", vim.lsp.buf.hover, "Display info about symbol")
    map("<space>r", vim.lsp.buf.rename, "Rename symbol")
    map("<space>s", "<Cmd>Telescope lsp_document_symbols<CR>", "Find document symbols")
    map("<space>S", "<Cmd>Telescope lsp_workspace_symbols<CR>", "Find workspace symbols")
    map("gd", "<Cmd>Telescope lsp_definitions<CR>", "Go to definition")
    map("gi", "<Cmd>Telescope lsp_implementations<CR>", "Go to implementation")
    map("gr", "<Cmd>Telescope lsp_references<CR>", "Find references")
    map("gy", "<Cmd>Telescope lsp_type_definitions<CR>", "Go to type definition")

    if client:supports_method("textDocument/formatting", args.buf) then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ id = client.id, async = false })
        end,
      })
    end
  end,
})

-- Clipboard ------------------------------------------------------------------
vim.keymap.set({ "n", "v" }, "<space>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v" }, "<space>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<space>Y", "<Cmd>%y+<CR>", { desc = "Yank buffer to system clipboard" })

-- telescope.nvim -------------------------------------------------------------
vim.pack.add({
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope-ui-select.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

require("telescope").setup({
  defaults = {
    layout_config = { prompt_position = "top" },
    sorting_strategy = "ascending",
    mappings = { i = { ["<esc>"] = require("telescope.actions").close } },
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--hidden", "--glob=!.git" },
    },
  },
  extensions = {
    ["ui-select"] = { require("telescope.themes").get_dropdown() },
  },
})
require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<space>f", "<Cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<space>b", "<Cmd>Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<space>j", "<Cmd>Telescope jumplist<CR>", { desc = "Find jumplist entries" })
vim.keymap.set("n", "<space>/", "<Cmd>Telescope live_grep<CR>", { desc = "Live grep" })
vim.keymap.set("n", "<space>h", "<Cmd>Telescope help_tags<CR>", { desc = "Find help tags" })
