vim.cmd('packadd packer.nvim')

require('packer').startup(
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

    use 'p00f/nvim-ts-rainbow'

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

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- gitgutter style plugin.
    use "mhinz/vim-signify"

    -- colorscheme.
    use "sainnhe/everforest"

    -- fuzzy finder.
    use {
      "nvim-telescope/telescope.nvim", tag = "0.1.0",
      requires = {
        { "nvim-lua/plenary.nvim" }
      }
    }

    use "folke/lsp-colors.nvim"

    use "tpope/vim-fugitive"

    -- airline, status line plugin
    use "vim-airline/vim-airline"
    -- airline themes
    use "vim-airline/vim-airline-themes"

    -- visual studio code dark theme
    use "tomasiser/vim-code-dark"

    -- formatting
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
                    exe = "gofmt",
                    args = { vim.api.nvim_buf_get_name(0) },
                    stdin = true
                  }
                end
              },
              javascript = {
                function()
                  return {
                    exe = "npm fmt",
                    args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
                    stdin = true
                  }
                end
              },
            }
          }
        )
      end
    }

    -- base64 encoding/decoding
    use "christianrondeau/vim-base64"

    -- puml
    use "weirongxu/plantuml-previewer.vim"
    use "tyru/open-browser.vim"
    use "aklt/plantuml-syntax"
  end
)

-- treesitter
require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "go" },
  highlight = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      'royalblue3',
      'darkorange3',
      'seagreen3',
    },
    termcolors = {
      'LightBlue',
      'Yellow',
      'Magenta',
    },
  },
}

-- telescope
require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" }
  }
}

-- comment plugin
require('nvim_comment').setup()

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.go FormatWrite
augroup END
]], true)
