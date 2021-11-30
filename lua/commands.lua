local exec = vim.api.nvim_exec


-- auto compile packer when there are changes in plugins.lua.
exec(
  [[augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]],
  true
)
