set nocompatible smartindent autoindent noincsearch title ruler
set modeline modelines=6 laststatus=0
set fileencodings=utf-8
set encoding=utf-8
set number relativenumber
set background=dark
set cursorline 
set shiftwidth=4 tabstop=4

filetype plugin on
syntax on
highlight Error NONE

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'base16-community/base16-vim'
call plug#end()

let mapleader=" "
nnoremap <Tab> <C-W>w
map <leader>x :split<CR>
map <leader>v :vsplit<CR>
inoremap jj <esc>
nnoremap <leader>f :FZF<cr>
nmap <leader>d <Plug>(coc-definition)
nmap <leader>r <Plug>(coc-references)
nmap <leader>t <Plug>(coc-type-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>p <Plug>(coc-foramt)
nnoremap <F2> :bprevious<cr>
nnoremap <F3> :bnext<cr>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
set termguicolors
let base16_colorspace=256
colorscheme base16-gruvbox-dark-hard
