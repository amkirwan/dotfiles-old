filetype plugin indent on

runtime macros/matchit.vim
if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" for scss highlighting 
au BufRead,BufNewFile *.scss set filetype=scss

set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab

set hlsearch        " highlight searches
set incsearch       " show search matches as you type
set nu              " turn line numbers on

" Don't create backup  files
" leaving commented for now
" set nobackup
" set noswapfile

" set t_Co=256        " color
" colorscheme mono" color theme
" set background=dark " adapt colors for bg
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" monokai colorscheme
colorscheme monokai

if has('gui_running')
  set guifont=Inconsolata:h11 "set mvim font
endif

" Make it obvious where 80 characters is
" set textwidth=80
" set colorcolumn=+1

"Map Esc
inoremap kj <Esc>

"NERDtree map
ab nt NERDTree
let g:NERDTreeDirArrows=0

"vim markdown
let g:vim_markdown_no_default_key_mappings = 1

" Set the tag file
set tags=./tags;

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

" map <C-n> :cn<CR>
" map <C-p> :cp<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <Leader>p :CtrlP<CR>
" CTRLP clear cache
map <Leader>C :CtrlPClearCache<CR>

" quicker window movements
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

autocmd filetype python set expandtab  " Python settings for tabs

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  "   " Don't do it for commit messages, when the position is invalid, or
  "   when
  "     " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
augroup END
