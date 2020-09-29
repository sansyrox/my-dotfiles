"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/leetcode.vim

if exists('g:vscode')
  " VS Code extension
  source $HOME/.config/nvim/vscode/settings.vim
  source $HOME/.config/nvim/plug-config/easymotion.vim
else

  " Themes
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/nvcode.vim
  source $HOME/.config/nvim/themes/airline.vim

  " Plugin Configuration
  source $HOME/.config/nvim/keys/which-key.vim
  source $HOME/.config/nvim/plug-config/rainbow.vim
  source $HOME/.config/nvim/plug-config/rnvimr.vim
  source $HOME/.config/nvim/plug-config/better-whitespace.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/sneak.vim
  source $HOME/.config/nvim/plug-config/vim-wiki.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/goyo.vim
  source $HOME/.config/nvim/plug-config/vim-rooter.vim
  source $HOME/.config/nvim/plug-config/start-screen.vim
  source $HOME/.config/nvim/plug-config/gitgutter.vim
  source $HOME/.config/nvim/plug-config/git-messenger.vim
  source $HOME/.config/nvim/plug-config/closetags.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  " source $HOME/.config/nvim/plug-config/vista.vim
  source $HOME/.config/nvim/plug-config/xtabline.vim
  source $HOME/.config/nvim/plug-config/polyglot.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/tagalong.vim
  " source $HOME/.config/nvim/plug-config/illuminate.vim
  source $HOME/.config/nvim/plug-config/bracey.vim
  source $HOME/.config/nvim/plug-config/asynctask.vim
  source $HOME/.config/nvim/plug-config/window-swap.vim
  source $HOME/.config/nvim/plug-config/markdown-preview.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
  " source $HOME/.config/nvim/plug-config/vimspector.vim " Uncomment if you want to use Vimspector
  " source $HOME/.config/nvim/plug-config/ale.vim
endif

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif
syntax enable
if !exists('g:vscode')
  colorscheme night-owl
endif

" Better nav for omnicomplete TODO figure out why this is being overridden
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
set guifont=Dank\ Mono:h14


hi StatusLineNC gui=bold guibg=#022a4b
hi StatusLine gui=bold guibg=#03467c
hi TabLineFill gui=none guibg=#022a4b
hi TabLine gui=none guibg=#022a4b
hi TabLineSel gui=bold guibg=#03467c

" " open new split panes to right and below
" set splitright
" set splitbelow
" set relativenumber

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" emacs key bindings in insertmode
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-w> <C-o>w
inoremap <C-b> <C-o>b

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
