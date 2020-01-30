let mapleader=","
set number
set guifont=Dank\ Mono:h14
set macligatures
syntax on
filetype plugin on

call plug#begin('~/.vim/plugged')
"File Sytsem Navigation
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

"Window navigation and VIM UX
Plug 'christoomey/vim-tmux-navigator'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'haishanh/night-owl.vim'

"Code commenting/ autocomplete/ syntax checking
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
"Plug 'davidhalter/jedi-vim'
Plug 'raimondi/delimitmate'
Plug 'elzr/vim-json'
Plug 'bronson/vim-trailing-whitespace'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'luochen1990/rainbow'
Plug 'thinca/vim-quickrun'
Plug 'rhlobo/vim-super-retab'
Plug 'mattn/emmet-vim'

"HTML and XML autocomplete
Plug 'sukima/xmledit'

"Version Control and Git
Plug 'tpope/vim-fugitive'

"Spotify Control
Plug 'HendrikPetertje/vimify'

"Training
Plug 'takac/vim-hardtime'


call plug#end()

set background=dark
colorscheme solarized
set relativenumber
set noexpandtab
set wildmenu
set showcmd
set autoindent
set shiftwidth
set smartindent
set spell
set tabstop=2
set sw=2
set sts=2
"Enabling files to autoread whena the files are changed on the disk
set autoread

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F2> :set ts=2 sw=2 noet<CR>


let g:hardtime_default_on = 1
let g:ale_linters = { 'python': ['flake8', ] }
let g:rainbow_active = 1
let g:airline#extensions#ale#enabled = 1

" Spotify Integration
let g:spotify_country_code = 'US'
let g:spotify_prev_key = "<F9>"
let g:spotify_playpause_key = "<F10>"
let g:spotify_next_key = "<F11>"
let g:spotify_token=$SPOTIFY_CLIENT_SECRET

map <Enter> o<ESC>
map <S-Enter> O<ESC>
nnoremap ª m`:+g/\m^\s*$/d<CR>``:noh<CR>
nnoremap º m`:-g/\m^\s*$/d<CR>``:noh<CR>

if (has("termguicolors"))
 set termguicolors
endif


