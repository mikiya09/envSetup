---------------- *** neovim in lua *** -----------------

-- 1. Global options (vim.o)
-- 2. Local to window (vim.wo)
-- 3. Local to buffer (vim.bo)
-- 4. reload configuration (:so ~/.config/nvim/init.lua | :so %)

--++ options config ++--
require("xiron.options")

require("xiron.keymaps")

require("xiron.plugins")

require("xiron.colorscheme")

require("xiron.comment")

require("xiron.treesitter")

require("xiron.lualine")

require("xiron.autopairs")

require("xiron.toggleterm")

require("xiron.telescope")

require("xiron.autosave")

require("xiron.nvim-tree")

require("xiron.init-vim")

require("xiron.lspconfig.language-servers")

require("xiron.null-ls")

--++ end ++--

----** neovim shortcut **----
-- shift + s: delete the whole line, and enter insert mode

-- command --
-- copy:  yy
-- cut:   dd
-- paste: p
-- replace letter: r + shift + [the character you want to enter]
-- replace number: r + [the number  you want to enter]
-- insert at the begining: shift + i
-- insert at the end: shift + a
