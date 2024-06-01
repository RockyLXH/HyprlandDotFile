set nocompatible nosmartindent autoindent noincsearch title ruler
set modeline modelines=6 laststatus=0
set fileencodings=utf-8
set number relativenumber

"set wildmenu
"set wildmode=list:longest,full
set jumpoptions=stack

filetype plugin on
syntax on
highlight Error NONE

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
call plug#end()

inoremap jj <esc>
nnoremap <space>f :FZF<cr>
nmap <space>d <Plug>(coc-definition)
nmap <space>r <Plug>(coc-references)
nmap <space>t <Plug>(coc-type-definition)
nmap <space>i <Plug>(coc-implementation)
nmap <space>p <Plug>(coc-foramt)
