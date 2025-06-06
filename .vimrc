source $VIMRUNTIME/defaults.vim

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'github/copilot.vim'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'rhysd/vim-gfm-syntax'
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

colorscheme material
set termguicolors

set cursorline
set list
set nobackup
set number
set smoothscroll
set confirm

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" shorter hard tab width
set smarttab
set smartindent
set tabstop=4
set shiftwidth=4

" easier mapleader
let mapleader=","

" Other plugin settings
map <Leader>t :NERDTreeToggle<CR>
let g:NERDSpaceDelims = 1

" grep + cwindow
autocmd QuickFixCmdPost *grep* cwindow

" ctrlp + git ls-files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
