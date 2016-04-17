set nocompatible
filetype indent plugin on
syntax on "Syntax highlighting

let maplocalleader = ","
execute pathogen#infect()

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
