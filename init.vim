syntax on
""set guicursor= " no cursor change

let mapleader = " " " map leader to Space
set tabstop=3
set shiftwidth=3
set expandtab
set number
set hlsearch
"set colorcolumn=80





"Function Curly Bracket
inoremap {<CR> {<CR>}<Esc>ko
"Bracket and Quote pair
""inoremap " ""<Esc>ha
""inoremap ' ''<Esc>ha


" Indent multiple lines quickly
vnoremap < <gv
vnoremap > >gv

" leader + n makes highlighted results dissapear
nnoremap <Leader>n :noh<cr>

" Switch between buffers
map <S-L> :bnext<cr>
map <S-H> :bprevious<cr>
map <leader>d :bdelete<cr>

" Telescope
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Neotree
nnoremap <leader>e <cmd>NvimTreeToggle<cr>

"map SAVE to Ctrl+S
inoremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>
nnoremap <silent> <C-S>          :update<CR>


"switch windows
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>w
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k

"split window
nnoremap <leader>l :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>q :q<CR>

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Search through all lines in a buffer
nnoremap <C-F> :BLines<CR>

" Open terminal
nnoremap <Leader>t :term<CR>

" Exit all buffers
nnoremap <C-M-E> :bufdo q<CR>

" Save all buffers"
nnoremap <C-W> :bufdo w<CR>

" Disable mode of the bottom
set noshowmode 

" vim plug section
call plug#begin()
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
" Buffer Line
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
" file tree
Plug 'nvim-tree/nvim-tree.lua',
" colorscheme
Plug 'folke/tokyonight.nvim',
" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'},

" LSP
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}


" flash for jumping
Plug 'folke/flash.nvim'
call plug#end()





lua require('cursor')
lua require('plugins')


