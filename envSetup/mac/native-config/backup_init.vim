
" 分屏指令：sp term://zsh
" shortcut in terminal: 
" shift+l -> to the top of the file in the current window     
" shift+h -> to the bottom of the file in the ...
" gg -> to the top of the whole file
" shift g -> to the bottom of the whole file
filetype off

"inoremap <c-s> <Esc>
"imap: only apply when in the insert mode
"imap jj <Esc> " 备选，非常有用
inoremap ;; <Esc>


syntax enable
set termguicolors
set encoding=utf-8
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
" set cursorline " a horizontal line that catch the cursor

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/wadackel/vim-dogrun.git'				" dark purple type color, use lightline instead of airline
Plug 'https://github.com/morhetz/gruvbox.git'					" classic, keep it
Plug 'https://github.com/fneu/breezy.git'						" same, I like the lightline parto
Plug 'sonph/onehalf', {'rtp': 'vim/'}							" good for eyes
Plug 'https://github.com/sainnhe/everforest.git'				" not yet used to it 
Plug 'dracula/vim', {'as': 'dracula'}							" set iterm2 color: https://draculatheme.com/iterm | official website: https://draculatheme.com/


Plug 'https://github.com/preservim/nerdtree.git'				" File Browser: default (NERDTreeToggle)
Plug 'https://github.com/preservim/nerdcommenter'				" Nerd Commenter see below configuration
"Plug 'https://github.com/vim-airline/vim-airline'				" Mode Displayer
Plug 'https://github.com/itchyny/lightline.vim.git'

Plug 'https://github.com/ryanoasis/vim-devicons'				" Developer Icons
Plug 'https://github.com/xiyaowong/nvim-transparent.git'		" transparency 
" Plug 'nvim-lua/plenary.nvim'									" telescope add-on
" Plug 'nvim-telescope/telescope.nvim'							" telescope
Plug 'https://github.com/tpope/vim-surround.git'				" shortcut for changing surround: 'v' -> [v]
Plug 'https://github.com/terryma/vim-multiple-cursors.git'		" multiple cursors operating together
Plug 'https://github.com/preservim/tagbar.git'					" Tagbar for code navigation

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}		" treesitter - We recommend updating the parsers on update
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }		" css color preview

call plug#end()



" COLOR SKIN : (go to above github link for checking different colorscheme)
" True Color enable --> (different colorschemes have their different code of enabling true color
" =========================================================
" get hex value: https://imagecolorpicker.com/en
" 1). gruvbox (hex: #282828)
"colorscheme dogrun
colorscheme dracula
let g:lightline = {'colorscheme' : 'dogrun'}

" 2). dogrun

" 3). breezy (lightline)

" 4). PaperColor (lightline)

" 5). palenight (hex: #292d3e)
"set background=dark
"colorscheme palenight
"let g:lightline = { 'colorscheme': 'dogrun' }
"" set true color
"if (has("nvim"))
  "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

"if (has("termguicolors"))
  "set termguicolors
"endif
" =========================================================


" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <space> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" NERDCommenter
vmap <s-c> <Plug>NERDCommenterToggle
nmap <s-c> <Plug>NERDCommenterToggle


" Code Navigation (tagbar)
nmap <s-t> :TagbarToggle<CR>


" Transparency
"let g:transparent_enabled = v:true
let g:transparent_enabled = v:false

" color hexokinase
" first install go
let g:Hexokinase_highlighters = ["virtual"]
let g:Hexokinase_ftEnable = ['css', 'html', 'javascript']
" All possible highlighters
" let g:Hexokinase_highlighters = [
" \   'virtual',
" \   'sign_column',
" \   'background',
" \   'backgroundfull',
" \   'foreground',
" \   'foregroundfull'
" \ ]
"

" cursor
set guicursor=n-c-v:hor20,i:ver10


" shortcut in neovim
" copy:					yy
" cut:					dd 
" paste(next line):		p
" select line:			V
" copy to somewhere:	"+y

" ====== maping copy =======
vnoremap <c-c> "+y
map <c-v> "+p


" treesitter (see the github page)
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
  "ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  "sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  "ignore_install = { "javascript" }, -- List of parsers to ignore installing
  "highlight = {
    "enable = true,              -- false will disable the whole extension
    "disable = { "c", "rust" },  -- list of language that will be disabled
    "-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    "-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    "-- Using this option may slow down your editor, and you may see some duplicate highlights.
    "-- Instead of true it can also be a list of languages
    "additional_vim_regex_highlighting = false,
  "},
"}
"EOF


