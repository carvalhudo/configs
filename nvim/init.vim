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
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vimlab/split-term.vim'
Plug 'arcticicestudio/nord-vim'
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
" }}}

" Appearance {{{
"colorscheme gruvbox
colorscheme nord
set cursorline
hi cursorline cterm=none term=none ctermbg=0 ctermfg=11
"set background=dark

"let g:airline_theme='minimalist'
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
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

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

nnoremap <c-k> :Files<cr>
nnoremap <c-f> :Ag<space>
" }}}

" vim:foldmethod=marker:foldlevel=0
