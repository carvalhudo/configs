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
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'sakhnik/nvim-gdb'
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

let g:mkdp_browser = 'qutebrowser'
let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'wkhtmltopdf'
" }}}

" Appearance {{{
colorscheme zenburn
set background=dark

set cursorline
hi cursorline cterm=none term=none ctermbg=238
hi CursorLineNR ctermbg=238
highlight LineNr ctermfg=grey ctermbg=237

let g:airline_theme='zenburn'
let g:airline_symbols_ascii = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign
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
nnoremap <leader>ga :!git add %<cr><cr>
nnoremap <leader>cf :!clang-format -style=file -i %<cr><cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>tt :8Term<cr>
nnoremap <leader>w  :w<cr>
nnoremap <leader>c  :bd<cr>
nnoremap <leader>nh :noh<cr>

nnoremap <c-k> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <c-e> :History:<cr>
nnoremap <c-b> :Buffers<cr>

nnoremap <a-l> <c-w><Right>
nnoremap <a-h> <c-w><Left>
nnoremap <a-k> <c-w><Up>
nnoremap <a-j> <c-w><Down>
" }}}

" Cmds {{{
autocmd FileType text,markdown,tex set textwidth=99
autocmd BufNewFile,BufRead *.cpp,*.h,*.cc,*.c,*.py let &colorcolumn=join(range(101,999),",")
autocmd BufNewFile,BufRead *.cpp,*.h,*.cc,*.c,*.py highlight ColorColumn ctermbg=238 guibg=lightgrey
autocmd BufWritePre * %s/\s\+$//e
" }}}

" vim:foldmethod=marker:foldlevel=0
