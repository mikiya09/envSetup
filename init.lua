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

require "user.autopairs"

require "user.toggleterm"

require "user.telescope"

require "user.autosave"

--++ transfering config from init.vim ++--
vim.cmd [[
  set guicursor=n-c-v:hor20,i:ver10
  let g:Hexokinase_highlighters = ["virtual"]
  let g:Hexokinase_ftEnable = ['css', 'html', 'javascript']
  let g:transparent_enabled = v:true
  ]]

-- -- gruvbox
-- vim.opt.termguicolors = true
-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])


-- vim.cmd[[colorscheme dracula]]
-- references: https://github.com/LunarVim/Neovim-from-scratch
-- customize dracula color palette


----** neovim shortcut **----
-- shift + s: delete the whole line, and enter insert mode 


-- command --
-- replace letter: r + shift + [the character you want to enter]
-- replace number: r + [the number  you want to enter]
-- insert at the begining: shift + i
-- insert at the end: shift + a
