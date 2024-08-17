-- Treesitter config
local config = function(_, opts)
  require('nvim-treesitter.configs').setup(opts)
end

local opts = {
  highlight = {
    enable = true
  }
}

return {
  config = config,
  opts = opts
}
