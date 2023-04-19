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

    -- spellcheck.
    use {
      "lewis6991/spellsitter.nvim",
      config = function()
        require("spellsitter").setup {
          hl = "SpellBad",
          captures = { "comment" } -- set to {} to spellcheck everything
        }
      end
    }

    -- show signature of methods as you write.
    use "ray-x/lsp_signature.nvim"

    -- commenter.
    use "terrortylor/nvim-comment"

    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
      }
    }

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

    -- sonokai theme
    use "sainnhe/sonokai"

    -- gruvbox theme
    use "morhetz/gruvbox"

    -- formatting
    use "mhartington/formatter.nvim"

    -- base64 encoding/decoding
    use "christianrondeau/vim-base64"

    -- puml
    use "weirongxu/plantuml-previewer.vim"
    use "tyru/open-browser.vim"
    use "aklt/plantuml-syntax"

    -- nvim-dap debugging
    use "mfussenegger/nvim-dap"
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    -- dap adapters
    use 'leoluz/nvim-dap-go'

    -- Tester
    use 'vim-test/vim-test'

    -- github-dark theme
    use '1612492/github.vim'

    -- Markdown preview
    use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
    })

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
    file_ignore_patterns = { "node_modules", "tmp" }
  }
}

-- comment plugin
require('nvim_comment').setup()
