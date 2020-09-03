let mapleader=","
set number
set guifont=DankMono\ Nerd\ Font:h14
syntax on
filetype plugin on
set encoding=UTF-8
scriptencoding UTF-8

call plug#begin('~/.vim/plugged')
	"File Sytsem Navigation
	Plug 'raimondi/delimitmate'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
	Plug 'luochen1990/rainbow'
	Plug 'thinca/vim-quickrun'
	Plug 'rhlobo/vim-super-retab'
	Plug 'mattn/emmet-vim'
	""Window navigation and VIM UX
	Plug 'altercation/vim-colors-solarized'
	Plug 'vim-airline/vim-airline'
	Plug 'haishanh/night-owl.vim'
	Plug 'christoomey/vim-tmux-navigator'

	"Code commenting/ autocomplete/ syntax checking
	Plug 'ervandew/supertab'
	Plug 'scrooloose/nerdcommenter'
	Plug 'yggdroot/indentline'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-python']
	""Version Control and Git
	Plug 'ryanoasis/vim-devicons'
	Plug 'dracula/vim'

  " TypeScript Highlighting
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
	Plug 'cj/vim-webdevicons'
  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  "Plug 'ryanoasis/vim-devicons'

  " File Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

set background=dark
colorscheme night-owl
set relativenumber
set noexpandtab
set wildmenu
set showcmd
set autoindent
"set shiftwidth
set smartindent
set tabstop=2
set sw=2
set sts=2
"Enabling files to autoread whena the files are changed on the disk
set autoread

"nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F2> :set ts=2 sw=2 noet<CR>

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <C-p> :FZF<CR>

" requires silversearcher-ag
" used to ignore gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>


"let g:hardtime_default_on = 1
let g:ale_linters = { 'python': ['flake8', ] }
let g:rainbow_active = 1
let g:airline#extensions#ale#enabled = 1
let g:Powerline_symbols='unicode'
" Spotify Integration
let g:spotify_country_code = 'US'
let g:spotify_prev_key = "<F9>"
let g:spotify_playpause_key = "<F10>"
let g:spotify_next_key = "<F11>"
"let g:spotify_token=$SPOTIFY_CLIENT_SECRET


set encoding=utf8
let g:airline_powerline_fonts = 1
map <Enter> o<ESC>
map <S-Enter> O<ESC>
nnoremap ª m`:+g/\m^\s*$/d<CR>``:noh<CR>
nnoremap º m`:-g/\m^\s*$/d<CR>``:noh<CR>

if (has("termguicolors"))
 set termguicolors
endif

inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <C-'> <Leader>ci
inoremap <silent> <A-o> <Leader>ci
vmap <C-c> "+y
set mouse=a
