source $VIMRUNTIME/defaults.vim

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-gfm-syntax'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
" colorscheme
Plug 'cocopon/iceberg.vim'
Plug 'crusoexia/vim-monokai'
Plug 'kaicataldo/material.vim'
Plug 'tomasr/molokai'
Plug 'vim-scripts/Solarized'
Plug 'w0ng/vim-hybrid'
call plug#end()

" color theme
colorscheme molokai
set termguicolors

set cursorline
set number
set nobackup

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" easier mapleader
let mapleader=","

" Other plugin settings
map <Leader>t :NERDTreeToggle<CR>
let g:NERDSpaceDelims = 1
