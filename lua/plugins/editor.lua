return {
  -- File explorer
  {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = require('config.nvim-tree').opts,
    keys = require('config.nvim-tree').keys
  },
  -- Finder
  {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim' } },
    keys = require('config.telescope').keys,
    opts = require('config.telescope').opts
  },
  -- Keymaps
  {
	  'folke/which-key.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {}
  },
  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('config.treesitter').config,
    opts = require('config.treesitter').opts
  },
  -- Cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "garymjr/nvim-snippets",
    },
    opts = require('config.cmp').opts,
    config = require('config.cmp').config,
  },
  {
    "garymjr/nvim-snippets",
    dependencies = { "rafamadriz/friendly-snippets" },
    keys = require('config.nvim-snippets').keys,
    opts = require('config.nvim-snippets').opts
  }
}
