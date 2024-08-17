return {
  {
    'neovim/nvim-lspconfig',
    config = require('config.lsp-config').config,
    ft = require('config.lsp-config').ft,
    keys = require('config.lsp-config').keys
  }
}
