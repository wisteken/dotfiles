set shell=/bin/bash
set encoding=UTF-8

" 行番号を表示
set number

" 自動インデントを有効
set autoindent

" tabを半角スペース4個分に変換
set expandtab
set tabstop=4
set shiftwidth=4

" Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'

if isdirectory('~/.fzf')
    Plugin '~/.fzf' | Plugin 'junegunn/fzf.vim'
 else
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
    Plugin 'junegunn/fzf.vim'
endif

call vundle#end()
filetype plugin indent on
syntax enable

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
"set background=dark
"colorscheme dracula

" fzf
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Filesコマンドにもプレビューを出す
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
