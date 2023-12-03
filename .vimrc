set nocompatible

let maplocalleader = ","

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

call plug#begin("~/.vim/plugged")
" Plugin stuff using vim-plug
Plug 'ervandew/supertab'
Plug 'bronson/vim-trailing-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'github/copilot.vim'

" Languages and syntax highlighting
Plug 'rust-lang/rust.vim'
call plug#end()

let g:copilot_filetypes = {
            \ '*': v:true,
            \ }

set autoindent
set autoread
set colorcolumn=80
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
"set mouse=a
set nofoldenable
set noswapfile
set nowrap
set number
set relativenumber
set ruler
set scrolloff=5
set shiftwidth=4
set sidescroll=5
set smartcase
set smartcase
set splitbelow
set splitright
set t_Co=256
set tabstop=4
set wildmenu

syntax enable
colorscheme sorbet

" Keybinds
nnoremap cc :center<CR>
" inoremap kj <Esc>

                           " Random Emacs keybinds

" Save and quit
nnoremap <C-a> 0
nnoremap <C-e> $
inoremap <C-a> <Esc>0i
inoremap <C-e> <Esc>$a
vnoremap <C-a> 0
vnoremap <C-e> $

execute "set <M-q>=\eq"
nmap <M-q> gwip
imap <M-q> <Esc>gwipa

imap <C-x><C-f> <Esc>:Explore<Enter>
nmap <C-x><C-f> :Explore<Enter>

" Make latex fast again
autocmd FileType tex setlocal nocursorline

" Unmap Ex mode
nnoremap Q <Nop>

nmap <F2> :bnext<Enter>
nmap <F3> :bprev<Enter>

" Open file explorer
map <C-n> :NERDTreeToggle<CR>
nmap - :Explore<CR>

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
