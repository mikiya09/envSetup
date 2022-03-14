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

require "user.init-vim"

require "user.lspconfig"


-- require "user.lsp"
-- in order to let lsp take effect, also language server like pyright has to be installed first. Later spent sometime on that
-- refers: 
-- https://www.youtube.com/watch?v=36o52-2_83M&t=253s
-- https://www.youtube.com/watch?v=FW2X1CXrU1w&t=1098s
-- https://www.youtube.com/watch?v=0BkXocfUdUA
-- https://www.youtube.com/watch?v=jFXEQV9Fo1k
-- https://www.youtube.com/channel/UCS97tchJDq17Qms3cux8wcA
--


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
