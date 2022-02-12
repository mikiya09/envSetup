

---------------- *** neovim in lua *** -----------------


-- 1. Global options (vim.o)
-- 2. Local to window (vim.wo)
-- 3. Local to buffer (vim.bo)
-- 4. reload configuration (:so ~/.config/nvim/init.lua | :so %)


--++ options config ++--
require "user.options"

require "user.keymaps"

require "user.plugins"

require "user.colorscheme"

require "user.comment"

require "user.treesitter"

require "user.lualine"

require "user.toggleterm"

--++ transfering config from init.vim ++--
vim.cmd [[
  syntax enable
  set guicursor=n-c-v:hor20,i:ver10
  ]]

-- vim.cmd[[colorscheme dracula]]
-- references: https://github.com/LunarVim/Neovim-from-scratch


----** neovim shortcut **----
-- shift + s: delete the whole line, and enter insert mode 



