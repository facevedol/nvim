local defaults = {
  mouse = 'a',
  wrap = false,
  smartindent = true,
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  shiftround = true,
  -- clipboard = 'unnamedplus',
  hidden = true,
  smartcase = true,
  splitbelow = true,
  termguicolors = true,
  cursorline = true,
  number = true,
  relativenumber = true,
  scrolloff = 10,
  sidescrolloff = 10,
  virtualedit = 'all',
  foldmethod = 'indent',
  foldlevel = 99,
}

for k, v in pairs(defaults) do
  vim.o[k] = v
end

vim.cmd.colorscheme "catppuccin-mocha"
