vim.o.ruler = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.ignorecase = true
vim.o.hlsearch = true
--vim.o.background = 'dark'
vim.o.termguicolors=false -- This needs to be false when using MacOS Terminal
vim.o.hidden = true
vim.o.updatetime = 300
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = false

vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

vim.g.mapleader = ','
vim.b.mapleader = ','

vim.wo.list = true
vim.o.listchars = 'tab:┆·,trail:·,precedes:,extends:'

vim.g.markdown_fenced_languages = { 'sh', 'vim' }

vim.g.termbufm_direction_cmd = 'new'
-- themeing
--vim.g.sonokai_style = 'maia'
--vim.g.sonokai_better_performance = 1
vim.cmd('colorscheme codedark')
-- airline options
vim.g.airline_theme = 'codedark'
vim.o.signcolumn = 'yes'

-- format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local client_length = vim.lsp.get_active_clients()
    if #client_length > 0 then
      vim.lsp.buf.format{async=false}
    end
  end,
})
