-- @@@@@@@@@@@@@@@@@@@@ keybinding pattern @@@@@@@@@@@@@@@@@@@@@
-- vim.api.nvim_set_keymap( {mode}, {keymap{, {mapped_to}, {options} )

-- < set {options} placeholder >
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- < set shorten function name for vim.api.nvim_set_keymap, so don't need to type each time mapping keys >
local keymap = vim.api.nvim_set_keymap


-- @@@@@@@@@@@@@@@@@@@@ remapping @@@@@@@@@@@@@@@@@@@@

-- Leader Key: remap to <space>
keymap("", "<Space>","<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("n", "<leader>e", ":Lex 30<cr>", opts) -- right now it's like nerdtree with <space>+f: files & folders

-- written on neovim :w (since autosave plugin is installed, once you get out of insert mode, it will automatically saves)
-- keymap("n", "<C-s>", ":w<CR>", opts)
-- keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Insert --
-- out of insert mode
keymap("i", "<C-s>", "<ESC>", opts)    


-- Visual --
-- indentation in visual model: press > for right indent, < for left indent --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Navigate Buffers --
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)


-- telescope mapping --
keymap("n", "<leader>l", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({  }))<cr>", opts) -- how to enable shortcut preview "previewer = false"
keymap("n", "<c-g>", "<cmd>Telescope live_grep<cr>", opts)


-- nvim tree toggle
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Null-Ls mapping --
keymap("n", "<leader>f", ":lua vim.lsp.buf.formatting()<CR>", opts)


-- ======================================================================================
-- original <C-w-hjkl> still valid, I don't know why the following remapping doesn't work
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)


-- Visual --
-- Move text up and down --
-- keymap("v", "<S-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<S-k>", ":m •-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)
-- not working, the reason I think might be already mapping ctrl and alt to something else 
-- already in the macos system
