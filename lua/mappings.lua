-- Change windows when splitted windows are present
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W>j', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W>k', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l', { noremap = true, silent = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', "<CMD>Telescope find_files<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fb', "<CMD>Telescope file_browser<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', "<CMD>Telescope live_grep<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fbu', "<CMD>Telescope buffers<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fh', "<CMD>Telescope help_tags<CR>", { noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>gd', "<CMD>Telescope lsp_definitions<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gr', "<CMD>Telescope lsp_references<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gi', "<CMD>Telescope lsp_implementations<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>gtd', "<CMD>Telescope lsp_type_definitions<CR>", { noremap = true, silent = true})

-- LSP
vim.api.nvim_set_keymap('n', '<Leader>ft', '<CMD>lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })
