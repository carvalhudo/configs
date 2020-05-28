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
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'zchee/deoplete-clang'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'sakhnik/nvim-gdb'
    Plug 'wincent/ferret'
    Plug 'lervag/vimtex'
    Plug 'soramugi/auto-ctags.vim'
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
filetype detect
set showmatch

let g:deoplete#enable_at_startup = 1
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit = "vertical"

if (&ft == 'c') || (&ft == 'cpp')
    let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
    let g:deoplete#sources#clang#clang_header = "/usr/lib/clang/"
    let g:deoplete#sources#clang#include_default_arguments = "True"
    let g:auto_ctags = 1
elseif (&ft == 'python')
    let g:deoplete#sources#jedi#show_docstring = 1
    let g:auto_ctags = 1
elseif (&ft == 'markdown')
    let g:mkdp_browser = "qutebrowser"
endif
" }}}

" Appearance {{{
colorscheme zenburn
set background=dark

set cursorline
highlight cursorline cterm=none term=none ctermbg=238
highlight CursorLineNR ctermbg=238
highlight LineNr ctermfg=grey ctermbg=238

let g:airline_theme = "zenburn"
let g:airline_symbols_ascii = 1

"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
highlight ALEErrorSign ctermbg=238
highlight ALEWarningSign ctermbg=238
highlight SignColumn ctermbg=238
highlight GitGutterAdd ctermfg=green ctermbg=238
highlight GitGutterDelete ctermfg=red ctermbg=238

if (&ft == 'c') || (&ft == 'cpp') || (&ft == 'python')
    let &colorcolumn=join(range(101,999),",")
    highlight ColorColumn ctermbg=238 guibg=lightgrey
endif

highlight VertSplit ctermbg=238 ctermfg=237
" }}}

" Indentation {{{
set ai
set shiftwidth=4
set tabstop=4
set expandtab
" }}}

" Keybinds {{{
let mapleader = "\<space>"

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>pu :PlugUpdate<cr>
nnoremap <leader>tt :8Term<cr>
nnoremap <leader>w  :w<cr>
nnoremap <leader>bc :Bclose<cr>
nnoremap <leader>nh :noh<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>s  :split<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>m  :Man<cr>
nnoremap <leader>o  o<Esc>
nnoremap <leader>O  O<Esc>

" fzf hotkeys
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ack<space>
nnoremap <c-e> :History:<cr>
nnoremap <c-b> :Buffers<cr>

" navigation hotkeys
nnoremap <leader>l <c-w><Right>
nnoremap <leader>h <c-w><Left>
nnoremap <leader>k <c-w><Up>
nnoremap <leader>j <c-w><Down>

" disabling the arrows for navigation
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" git hotkeys
nnoremap <leader>gs  :Gstatus<cr>
nnoremap <leader>gc  :Gcommit<cr>
nnoremap <leader>gca :Gcommit --amend<cr>

if (&ft == 'c') || (&ft == 'cpp')
    nnoremap <leader>c _i//<Esc>
    nnoremap <leader>u _xx
    iabbrev dbg printf("%s:%d\n", __FUNCTION__, __LINE__);
elseif (&ft == 'python')
    nnoremap <leader>c _i#<Esc>
    nnoremap <leader>u _x
endif

inoremap <a-;> <Esc>
" }}}

" Cmds {{{
autocmd FileType text,markdown,tex set textwidth=99
autocmd BufWritePre * %s/\s\+$//e
" }}}

" vim:foldmethod=marker:foldlevel=0
