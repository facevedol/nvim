local opts = {
  servers = {
    rust_analyzer = {}
  },
  setup = {
    ['*'] = function(server, opts) end,
  }
}

local config = function(_, opts)
  require'lspconfig'.rust_analyzer.setup{
    settings = {
      ['rust-analyzer'] = {
        -- diagnostics = {
        --   enable = false;
        -- }
      }
    }
  }
  require('keymaps').lsp_mappings()
end

local ft = 'rust'

local keys = {
  {'<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', desc = 'Code Action', ft = ft },
  {'<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<cr>', desc = 'Format', ft = ft },
  {'<leader>li', '<cmd>LspInfo<cr>', desc = 'Info', ft = ft },
  {'<leader>lj', '<cmd>lua vim.lsp.diagnostics.goto_next()<cr>', desc = 'Next Diagnostics', ft = ft },
  {'<leader>lk', '<cmd>lua vim.lsp.diagnostics.goto_prev()<cr>', desc = 'Previous Diagnostics', ft = ft },
  {'<leader>lq', '<cmd>lua vim.lsp.diagnostics.quickfix()<cr>', desc = 'Open Diagnostics', ft = ft },
  {'<leader>lc', '<cmd>cclose<cr>', desc = 'Close Diagnostics', ft = ft },
  {'<leader>lr', '<cmd>Telescope lsp_references<cr>', desc = 'References', ft = ft },
}

return {
  opts = opts,
  keys = keys,
  config = config,
  ft = ft
}
