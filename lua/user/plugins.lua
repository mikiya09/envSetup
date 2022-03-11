
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Pre-Setup @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

-- Automatically install packer: (package manager, just like vim-plug)
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- whenever you use :w in this file, you will have all thing done for you, with a popup window display
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ Plugin Download From Github @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- Install plugins (location):  /Users/jojo/.local/share/nvim/site/pack/packer/
-- :PackerInstall
return packer.startup(function(use)


   -- start folder: autoload plugins when neovim starts
  use 'wbthomason/packer.nvim'            -- packer manage itself: https://github.com/wbthomason/packer.nvim
  use 'nvim-lua/popup.nvim'               -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'             -- Useful lua functions used ny lots of plugins

  -- colorscheme
  use 'Mofiqul/dracula.nvim'
  use "ellisonleao/gruvbox.nvim"
  use "lunarvim/darkplus.nvim"
  use "rebelot/kanagawa.nvim"

  -- gcc & gc comment
  use 'numToStr/Comment.nvim'             

  -- treesitter: color highlighting
  use {
    "nvim-treesitter/nvim-treesitter",     
    run = ":TSUpdate",
  }

  -- hexokinase: hex color highlighter
  use {
    "rrethy/vim-hexokinase",
    run = "make hexokinase"
  }

  -- ?
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- lualine
  -- use {
  -- 'nvim-lualine/lualine.nvim',            -- lualine, the line under 
  -- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  -- }

  -- float window: toggleterm
  use "akinsho/toggleterm.nvim"

  -- autopair: {}, [], "", ''
  use "windwp/nvim-autopairs"

  -- telescope
  use "nvim-telescope/telescope.nvim"

  -- transparent
  use "xiyaowong/nvim-transparent"

  -- autosave
  use "Pocco81/AutoSave.nvim"

  -- LPS
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters


  -- optional folder: loaded with command(lazyload), separate in another folder, keep it clean 
  -- format {'user/repo', opt = true, cmd = {'xxx', 'xxx', 'xxx'}}
  -- use ""


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
