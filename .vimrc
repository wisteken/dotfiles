set encoding=UTF-8

" 行番号を表示
set number

" 自動インデントを有効
set autoindent

" tabを半角スペース4個分に変換
set expandtab
set tabstop=4
set shiftwidth=4

" config for Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'dracula/vim'

call vundle#end()
filetype plugin indent on

" airline
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" nerdtree
syntax on
filetype plugin indent on
map <C-t> :NERDTreeToggle<CR>

" colortheme
set background=dark
colorscheme dracula
