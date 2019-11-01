" author: André L. C. Moreira (carvalhudo)
" source: github.com/carvalhudo/configs

" Plugins {{{
call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vimlab/split-term.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
"Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }
call plug#end()
" }}}

" Misc {{{
set hidden
set mouse=a
set inccommand=split
set splitbelow splitright
set number relativenumber
set numberwidth=5
syntax on
set showmatch

autocmd BufWritePre * %s/\s\+$//e

let g:mkdp_browser = 'qutebrowser'
" }}}

" Appearance {{{
colorscheme nord

let g:airline_theme='bubblegum'
let g:airline_symbols_ascii = 1
" }}}

" Indentation {{{
set ai
set shiftwidth=4
set tabstop=4
set expandtab
" }}}

" Keybinds {{{
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>ga :!git add %<CR><CR>
nnoremap <leader>cf :!clang-format -style=file -i %<CR><CR>
nnoremap <leader>sc :!shellcheck %<CR>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>tt :8Term<cr>
nnoremap <leader>w  :w<cr>
nnoremap <leader>nh :nh<cr>

nnoremap <c-k> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-e> :History:<cr>
nnoremap <c-b> :Buffers<cr>
" }}}

" vim:foldmethod=marker:foldlevel=0
