-- :help options
    

local options = {
  showmode = false,
  autoindent = true,
  smartcase = true,
  smartindent = true,
  expandtab = true,
  shiftwidth = 4,
  tabstop = 4,
  guifont = "",
  mouse = "a",
  number = true,
  relativenumber = true,
  termguicolors = true,
}

vim.opt.shortmess: append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

