" Easier initial setup:
"   source $VIMRUNTIME/defaults.vim
"     or
"   $ cp $VIMRUNTIME/vimrc_example.vim ~/.vimrc

" vim-plug: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/Solarized'
Plug 'w0ng/vim-hybrid'
call plug#end()

set background=dark
set cursorline

" Tabs and Spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set number

" Better status
set laststatus=2
set wildmenu

" Better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" easier mapleader
let mapleader=","

" grep -> copen
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

" Other plugin settings
map <Leader>t :NERDTreeToggle<CR>
map <Leader>b :TagbarToggle<CR>
let g:NERDSpaceDelims = 1
