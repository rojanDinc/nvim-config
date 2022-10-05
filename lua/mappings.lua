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

-- DAP
vim.api.nvim_set_keymap( "n", "<F4>", "<CMD>lua require('dapui').toggle()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F5>", "<CMD>lua require('dap').toggle_breakpoint()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F9>", "<CMD>lua require('dap').continue()<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<F1>", "<CMD>lua require('dap').step_over()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F2>", "<CMD>lua require('dap').step_into()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<F3>", "<CMD>lua require('dap').step_out()<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<Leader>dhh", "<CMD>lua require('dap.ui.variables').hover()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "v", "<Leader>dhv", "<CMD>lua require('dap.ui.variables').visual_hover()<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<Leader>duh", "<CMD>lua require('dap.ui.widgets').hover()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<Leader>duf", "<CMD>lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<Leader>dro", "<CMD>lua require('dap').repl.open()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<Leader>drl", "<CMD>lua require('dap').repl.run_last()<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<Leader>dbc", "<CMD>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<Leader>dbm", "<CMD>lua require('dap').set_breakpoint( nil, nil, vim.fn.input('Log point message: ') )<CR>", { noremap = true, silent = true } )

vim.api.nvim_set_keymap( "n", "<Leader>dc", "<CMD>lua require('dap.ui.variables').scopes()<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<Leader>td", "<CMD>lua require('dap-go').debug_test()<CR>", {noremap = true, silent = true} )
