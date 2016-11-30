call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" for scss highlighting 
au BufRead,BufNewFile *.scss set filetype=scss

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set hlsearch        " highlight searches
set nu              " turn line numbers on

set t_Co=256        " color
colorscheme desert  " color theme
set background=dark " adapt colors for bg

if has('gui_running')
  set guifont=Inconsolata:h11 "set mvim font
endif

"Map Esc
":inoremap kj <Esc>
inoremap kj <Esc>

"NERDtree map
ab nt NERDTree

"vim markdown
let g:vim_markdown_no_default_key_mappings = 1

" Set the tag file
set tags=./tags;
set grepprg=ack

"Map Leader
let mapleader=","
let g:mapleader=","
nnoremap \ ,

"Map Tabs
map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprev<CR>
map tl :tablast<CR>
map tn :tabnext<CR>
map tp :tabprev<CR>
map tN :tabnew<CR>

set pastetoggle=<F2>

set tags=./tags;

map <C-n> :cn<CR>
map <C-p> :cp<CR>
