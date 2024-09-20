-- Set Custom Options
vim.opt.number         = true   -- Line numbers
vim.opt.relativenumber = false  -- Relative line numbers
vim.opt.hlsearch       = true   -- Highlight search
vim.opt.tabstop        = 2      -- Number of spaces that tab counts for
vim.opt.shiftwidth     = 2      -- Number of spaces to use for autoindent
vim.opt.expandtab      = true   -- Spaces instead of tabs
vim.opt.smartindent    = true   -- Smart indenting on new lines
vim.opt.wrap           = false  -- Line wrap
vim.opt.syntax         = "on"   -- Syntax highlighting

-- LSP Configuration
require'lspconfig'.clangd.setup{}

