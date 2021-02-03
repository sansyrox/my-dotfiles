" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    Plug 'scrooloose/nerdcommenter'
    Plug 'yggdroot/indentline'
    Plug 'tpope/vim-surround'
    Plug 'wellle/targets.vim'
    " Change dates fast
    " Plug 'tpope/vim-speeddating'
    " Convert binary, hex, etc..
    " Plug 'glts/vim-radical'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Useful for React Commenting
    Plug 'suy/vim-context-commentstring'
    " highlight all matches under cursor
    " Plug 'RRethy/vim-illuminate'
    Plug 'cakebaker/scss-syntax.vim'
  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'
  else
    " install with vim-plug
    Plug 'haishanh/night-owl.vim'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " Files basically sudo write
    Plug 'tpope/vim-eunuch'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'nvim-treesitter/nvim-treesitter', { 'commit': '3c07232'}
    Plug 'sheerun/vim-polyglot'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " " Auto pairs for '(' '[' '{'
    " Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Themes
    " Plug 'christianchiarulli/nvcode.vim'
    Plug 'ChristianChiarulli/nvcode-color-schemes.vim'
    " Plug 'kyazdani42/blue-moon'
    " Intellisense
    Plug 'neoclide/coc.nvim'
    ", {'branch': 'release'}
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'kevinhwang91/rnvimr'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'rhysd/git-messenger.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Plug 'ghifarit53/tokyonight-vim'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Better tabline
    Plug 'mg979/vim-xtabline'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'brooth/far.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " live server
    Plug 'turbio/bracey.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " async tasks
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Swap windows
    Plug 'wesQ3/vim-windowswap'
    " Markdown Preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    "React JS and Typescript Snippets
    Plug 'SirVer/ultisnips'
    Plug 'mlaursen/vim-react-snippets'
    " Rainbow brackets
    Plug 'luochen1990/rainbow'
    " Async Linting Engine
    " TODO make sure to add ale config before plugin
    " Plug 'dense-analysis/ale'
    " Better Whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Multiple Cursors
    " TODO add this back in change from C-n
    " Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'moll/vim-bbye'
    Plug 'qalshidi/vim-bettergrep'
    Plug 'jxnblk/vim-mdx-js'
    Plug 'vivien/vim-linux-coding-style'
    " Plug 'yuezk/vim-js'
    " Plug 'maxmellon/vim-jsx-pretty'
    " Plug 'jelera/vim-javascript-syntax'
    " Plugin Graveyard

    " jsx syntax support
    " Typescript syntax
    " Plug 'HerringtonDarkholme/yats.vim'
    " Multiple Cursors
    " Plug 'terryma/vim-multiple-cursors'
    " Plug 'kaicataldo/material.vim'
    " Plug 'NLKNguyen/papercolor-theme'
    " Plug 'tomasiser/vim-code-dark'
    Plug 'rust-lang/rust.vim'
    " Vim Wiki
    " Plug 'https://github.com/vimwiki/vimwiki.git'
    " Better Comments
    " Plug 'jbgutierrez/vim-better-comments'
    " Echo doc
    " Plug 'Shougo/echodoc.vim'
    " Plug 'hardcoreplayers/spaceline.vim'
    " Plug 'vim-airline/vim-airline-themes'
    " Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    " Plug 'arcticicestudio/nord-vim'
    " Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    " Making stuff
    " Plug 'neomake/neomake'
    " Plug 'mhinz/vim-signify'
    " Plug 'easymotion/vim-easymotion'
    " Plug 'preservim/nerdcommenter'
  endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif


