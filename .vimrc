set nocompatible
filetype indent plugin on
syntax on "Syntax highlighting

" Set to auto read when a file is changed from the outside
set autoread

set guifont=Monospace\ 12
set colorcolumn=80 "Draw line at 80 columns

let maplocalleader = ","
execute pathogen#infect()

"Pathogen plugins
"https://github.com/rust-lang/rust.vim.git
"https://github.com/ervandew/supertab.git
"https://github.com/kien/ctrlp.vim.git
"https://github.com/othree/html5.vim.git
"https://github.com/jceb/vim-orgmode.git
"https://github.com/vim-scripts/utl.vim.git
"https://github.com/tpope/vim-speeddating.git

"GUI settings
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

"Make latex fast again
autocmd FileType tex setlocal nocursorline
autocmd BufNewFile,BufFilePre,BufRead *.txt set filetype=markdown

set number "Show line numbers
set wildmenu "Complete Vim commands
set cursorline "Highlight the cursor line

set lazyredraw

set tabstop=4 shiftwidth=4 expandtab "Tabs -> 4 spaces

colorscheme zenburn "Load the color scheme

"Search tweaks
set incsearch "Search before pressing enter, incremental search
set ignorecase smartcase "Ignore case when searching, unless capital letters are used

set linebreak "Only break at words

"Open file explorer
nmap - :Explore<Enter>
nmap <Tab><Tab> :Files<Enter>

"Tab keymaps
nmap tt :tabnew<Enter>
nmap t<Left> :tabprevious<Enter>
nmap t<Right> :tabnext<Enter>
nmap tq :tabclose<Enter>

"Move in wrapped lines
nmap <Up> gk
nmap <Down> gj
imap <Up> <C-o>gk
imap <Down> <C-o>gj

"Place regular tab
imap <S-Tab> <C-V><Tab>
