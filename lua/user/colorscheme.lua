--
-- -- darkplus 
-- vim.cmd [[
-- try
--   colorscheme darkplus
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
--





-- =====================================
-- go to where colorscheme is download, and modify their script, specifically treesitter
-- you will be able to modify the color shown in neovim colorscheme
-- Dracula:
local colorscheme = "dracula"


local status_ok, _= pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
 vim.notify("xxxxxxxxxxxx\n\ncolorscheme " .. colorscheme .. " not found!!!\n\nxxxxxxxxxxxx")
 return
end



-- vim.cmd "colorscheme default"





-- ======================================



