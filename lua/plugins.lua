vim.cmd('packadd packer.nvim')

return require('packer').startup(
	function()
    -- package manager.
    use "wbthomason/packer.nvim"

		use 'romainl/vim-cool'

    use 'prettier/vim-prettier'
    --use 'sheerun/vim-polyglot'

    -- treesitter (syntax tree).
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    }

    -- pretty status line.
    use "hoob3rt/lualine.nvim"

    -- in editor terminal.
    use "kassio/neoterm"
    
    -- spellcheck.
    use {
      "lewis6991/spellsitter.nvim",
      config = function()
        require("spellsitter").setup {
          hl = "SpellBad",
          captures = {"comment"} -- set to {} to spellcheck everything
        }
      end
    }

        -- formatter tool for various languages.
    use {
      "mhartington/formatter.nvim",
      config = function()
        local formatter = require("formatter")
        formatter.setup(
          {
            logging = false,
            filetype = {
              go = {
                function()
                  return {
                    exe = "golines",
                    args = {},
                    stdin = false
                  }
                end,
                function()
                  return {
                    exe = "goimports",
                    args = {"-local", '"$(go list -m)"'},
                    stdin = true
                  }
                end,
                function()
                  return {
                    exe = "gofumpt",
                    args = {"-s", "-extra"},
                    stdin = true
                  }
                end,
                function()
                  return {
                    exe = "gci",
                    args = {"-local", '"$(go list -m)"', "-w"},
                    stdin = false
                  }
                end
              },
              rust = {
                -- Rustfmt
                function()
                  return {
                    exe = "rustfmt",
                    args = {"--emit=stdout"},
                    stdin = true
                  }
                end
              },
              sh = {
                -- Shell Script Formatter
                function()
                  return {
                    exe = "shfmt",
                    args = {"-i", 2},
                    stdin = true
                  }
                end
              },
              lua = {
                -- luafmt
                function()
                  return {
                    exe = "luafmt",
                    args = {"--indent-count", 2, "--stdin"},
                    stdin = true
                  }
                end
              },
              markdown = {
                -- markdownfmt
                function()
                  return {
                    exe = "markdownfmt",
                    args = {"-w"},
                    stdin = false
                  }
                end
              }
            }
          }
        )
      end
    }

    -- show signature of methods as you write.
    use "ray-x/lsp_signature.nvim"

    -- commenter.
    use "terrortylor/nvim-comment"

    -- language agnostic linter.
    use "mfussenegger/nvim-lint"

    -- language agnostic in editor test runner.
    use "janko/vim-test"

    -- lsp installer
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
    }

    -- gitgutter style plugin.
    use "mhinz/vim-signify"

    -- colorscheme.
    use "sainnhe/everforest"

    -- fuzzy finder.
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim"
      }
    }

    use "folke/lsp-colors.nvim"

    use "tpope/vim-fugitive"

    use "fatih/vim-go"

  end
)
