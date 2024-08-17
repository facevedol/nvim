-- Key Mappings

local opts = {
  opts = {
    noremap = true,
    silent = true
  }
}

-- Mappings not loaded with which-key
local nmaps = {
  -- Windows nav
  ['<A-h>'] = '<C-w>h',
  ['<A-j>'] = '<C-w>j',
  ['<A-k>'] = '<C-w>k',
  ['<A-l>'] = '<C-w>l',
}

imaps = {
  -- Completion nav
  ['<C-j>'] = { 'pumvisible() ? "\\<down>" : "\\<C-j>"', {expr = true, noremap = true} }, 
  ['<C-k>'] = { 'pumvisible() ? "\\<up>" : "\\<C-k>"', {expr = true, noremap = true} }, 
}

local lnmaps = {
  -- Editor
  {'s', '<cmd>wa<cr>', 'Save All' },
  {'S', '<cmd>w!<cr>', 'Force Save' },
  {'q', '<cmd>qa<cr>', 'Quit' },
  {'Q', '<cmd>qa!<cr>', 'Force Quit' },
  {'c', '<cmd>q<cr>', 'Close' },
  {'C', '<cmd>q!<cr>', 'Force Close' },
  {'h', '<cmd>nohlsearch<cr>', 'No Highlights' },
  {'|', '<cmd>vsplit<cr>', 'Vertical Split' },
  {'-', '<cmd>split<cr>', 'Horizontal Split' },
}


local lsp_mappings = function(bufnr)
  local function buf_set_keymap(...) vim.api.nvim_set_keymap(...) end
  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
  buf_set_keymap('i', '<C-k>', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)

end

local load_maps = function(mode, opts, maps)
  local o = opts.opts
  
  for k, v in pairs(maps) do
    if type(v) == 'table' then
      o = v[2]
      v = v[1]
    end
    vim.api.nvim_set_keymap(mode, k, v, o)
  end
end

local load_lmaps = function(maps)
  for k, v in pairs(maps) do
    k = '<leader>'..v[1]
    c = v[2]
    o = {
      noremap = true,
      silent = true,
      desc = v[3]
    }
    vim.api.nvim_set_keymap('n', k, c, o)
  end

end

local load_keymaps = function()
  load_maps('n', opts, nmaps)
  load_maps('i', opts, imaps)
  load_lmaps(lnmaps)
end

return {
  load_keymaps = load_keymaps,
  lsp_mappings = lsp_mappings,
}
