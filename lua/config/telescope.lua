local opts = {}
local keys = {
  {'<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'File' },
  {'<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffer' },
  {'<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent File' },
  {'<leader>fR', '<cmd>Telescope registers<cr>', desc = 'Register' },
  {'<leader>fk', '<cmd>Telescope keymaps<cr>', desc = 'Keymap' },
  {'<leader>fc', '<cmd>Telescope commands<cr>', desc = 'Command' },
}

return {
  keys = keys,
  opts = opts
}
