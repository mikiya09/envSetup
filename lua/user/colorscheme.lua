

-- # kanagawa
-- vim.cmd("colorscheme kanagawa")
--

-- darkplua, default vscode like colorscheme 
-- vim.cmd[[colorscheme darkplus]]


-- rose pine colorscheme setup
-- use ({ 
--   'rose-pine/neovim', 
--   as = 'rose-pine', 
--   tag = 'v1.*', 
--   config = function() 
--        vim.cmd('colorscheme rose-pine')
--   end
--   })


-- =====================================
-- go to where colorscheme is download, and modify their script, specifically treesitter
-- you will be able to modify the color shown in neovim colorscheme
-- Dracula:
-- -- ==============================================================
local colorscheme = "dracula"
--
--
local status_ok, _= pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
 vim.notify("xxxxxxxxxxxx\n\ncolorscheme " .. colorscheme .. " not found!!!\n\nxxxxxxxxxxxx")
 return
end








-- ======================================



