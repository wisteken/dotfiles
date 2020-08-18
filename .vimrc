syntax on
set encoding=utf-8
set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set backspace=indent,eol,start

" pasteモード(,iでもペーストモードへ. ノーマルに戻るとインサートに戻す)
nnoremap ,i :<C-u>set paste<Return>i
autocmd InsertLeave * set nopaste

" マウス操作可能にする
set mouse=a

" マウスでドラッグ動作も可能にする
set ttymouse=xterm2
" クリップボード許可
" => http://qiita.com/Kumamon/items/3ca4ab80fc465d8eed7e
" => http://qiita.com/shoma2da/items/92ea8badcd4655b6106c
set clipboard=unnamed,autoselect

" 常にタブラインを表示
set showtabline=2

if has('vim_starting')
 set nocompatible               " Be iMproved

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/neobundle.vim/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'

NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'thinca/vim-ref'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'mattn/emmet-vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

nnoremap <silent><C-e> :NERDTreeToggle<CR>
map <C-n> <plug>NERDTreeTabsToggle<CR>

" 隠しファイルを表示する
let NERDTreeShowHidden = 1

" デフォルトでツリーを表示させる
let g:nerdtree_tabs_open_on_console_startup=1

" 他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Anywhere SID.
function! s:SID_PREFIX()
 return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
 let s = ''
 for i in range(1, tabpagenr('$'))
   let bufnrs = tabpagebuflist(i)
   let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
   let no = i  " display 0-origin tabpagenr.
   let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
   let title = fnamemodify(bufname(bufnr), ':t')
   let title = '[' . title . ']'
   let s .= '%'.i.'T'
   let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
   let s .= no . ':' . title
   let s .= mod
   let s .= '%#TabLineFill# '
 endfor
 let s .= '%#TabLineFill#%T%=%#TabLine#'
 return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
 execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ
