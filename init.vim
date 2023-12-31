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
nnoremap <Leader>l :bnext<cr>
nnoremap <Leader>h :bprevious<cr>
nnoremap <C-Q>     :bdelete<cr>

" BufferLine
nnoremap <leader>j :BufferLinePick<cr>

" Telescope
nnoremap <leader>k <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files no_ignore=true<cr>
nnoremap <leader>r <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
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
nnoremap <leader>vl :vsplit<CR>
nnoremap <leader>q :q<CR>

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Open terminal
nnoremap <Leader>t :term<CR>

" Exit all buffers
nnoremap <C-M-E> :bufdo q<CR>

" Save all buffers"
nnoremap <C-W> :bufdo w<CR>

" Disable mode of the bottom
set noshowmode 

" Scrolling
nnoremap K 5k
nnoremap J 5j
nnoremap H L
nnoremap L H

" DAP
nnoremap <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <leader>dc :lua require'dap'.continue()<CR>
nnoremap <leader>ds :lua require'dap'.step_over()<CR>
nnoremap <leader>di :lua require'dap'.step_into()<CR>
nnoremap <leader>dt :lua require'dap'.terminate()<CR>
nnoremap <leader>do :lua require("dapui").toggle()<CR>

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

" DAP
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

" Startup
Plug 'startup-nvim/startup.nvim'

call plug#end()





lua require('cursor')
lua require('plugins')


