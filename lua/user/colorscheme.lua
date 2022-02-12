
-- vim.cmd "colorscheme default"



-- Dracula:
local colorscheme = "dracula"




local status_ok, _= pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then 
  vim.notify("xxxxxxxxxxxx\n\ncolorscheme " .. colorscheme .. " not found!!!\n\nxxxxxxxxxxxx")
  return 
end


