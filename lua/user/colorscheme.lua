

-- one nord 
-- =========================================
-- local colors = require("onenord.colors").load()
--
-- require("onenord").setup({
--   custom_highlights = {
--     TSConstructor = { fg = colors.dark_blue },
--   },
--   custom_colors = {
--     white = "#ffffff",
--   },
-- })



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



