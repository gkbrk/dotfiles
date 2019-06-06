set nocompatible
filetype indent plugin on
syntax on " Syntax highlighting

" Set to auto read when a file is changed from the outside
set autoread

set guifont=Monospace\ 12
set colorcolumn=80 " Draw line at 80 columns

let maplocalleader = ","

" Plugin stuff using vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'nanotech/jellybeans.vim' " Colorscheme
Plug 'rust-lang/rust.vim'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'unblevable/quick-scope'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
call plug#end()

" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/TinySync/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding = 'expr'

" GUI settings
:set guioptions-=m  " remove menu bar
:set guioptions-=T  " remove toolbar
:set guioptions-=r  " remove right-hand scroll bar

" Make latex fast again
autocmd FileType tex setlocal nocursorline
autocmd BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

set number relativenumber " Show line numbers
set wildmenu " Complete Vim commands
set cursorline " Highlight the cursor line

" Mouse
set mouse=a
set clipboard=unnamedplus

set lazyredraw

set tabstop=4 shiftwidth=4 expandtab " Tabs -> 4 spaces

colorscheme jellybeans " Load the color scheme

" Search tweaks
set incsearch " Search before pressing enter, incremental search
set ignorecase smartcase " Ignore case when searching, unless capital letters are used

set linebreak " Only break at words

nmap <F2> :bnext<Enter>
nmap <F3> :bprev<Enter>


" Open file explorer
nmap - :Explore<Enter>
nmap <Tab><Tab> :Explore<Enter>

" Tab keymaps
nmap tt :tabnew<Enter>
nmap t<Left> :tabprevious<Enter>
nmap t<Right> :tabnext<Enter>
nmap tq :tabclose<Enter>

" Move in wrapped lines
nmap <Up> gk
nmap <Down> gj
imap <Up> <C-o>gk
imap <Down> <C-o>gj

" Place regular tab
imap <S-Tab> <C-V><Tab>
