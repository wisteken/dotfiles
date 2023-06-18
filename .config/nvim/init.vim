" === encoding ===
set encoding=utf-8
scriptencoding utf8
set fileencoding=utf-8
set fileformats=unix,dos,mac
lang en_US.UTF-8

" === 画面表示の設定 ===
" 行番号表示
set number
" 画面右下のカーソル位置表示
set ruler
" カーソル行の背景色を変える
set cursorline
" カーソル位置の縦一桁の背景色を変える
set cursorcolumn
" 画面最下部のステータス行を
" 0: 全く表示しない
" 1: ウィンドウが2つ以上あるときだけ表示
" 2: 常に表示
set laststatus=2
" 画面最下部(ステータス行より下)のメッセージ表示欄の行数
set cmdheight=2
" カーソル位置に括弧があった場合、対応する括弧を強調表示する
set showmatch
" ヘルプ画面の行数
set helpheight=999
" 不可視文字の表示
set list
" 不可視文字を表示する場合に、表示に使われる文字
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

" === カーソル移動関連の設定 ===
" <BS>キーの影響範囲を指定
set backspace=indent,eol,start
" 行頭/行末で左/右に移動した時に行をまたぐ移動ができるか
set whichwrap=b,s,h,l,<,>,[,]
" ウィンドウの上端、下端にカーソルが移動した時に、
" カーソル先の視界を何桁確保するか
set scrolloff=8
" 画面の左右の端で、カーソル先の視界を何桁確保するか
set sidescrolloff=16
" 画面の左右の端でスクロールが発生した場合、
" 何文字ずつスクロールするか
set sidescroll=1
" 選択範囲移動
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" === ファイル処理関連の設定 ===
" 編集中で保存されていないファイルがある時に他のファイルを開けるか
set hidden
" 保存されていないファイルがあるときに、
" vimを終了させようとした時に保存の確認を行うか
set confirm
" 開いているがvim上で変更のないファイルについて、
" 外部で変更があった時に自動的に読み込み直すか
set autoread
" ファイル保存時に、保存前のファイルをバックアップするか
set nobackup
" 編集中のファイルをスワップファイルとして保存するか
set noswapfile

" === 検索/置換の設定 ===
" 検索文字列をハイライトするか
set hlsearch
" エンターキーで確定する前から、文字列が入力されるたびに検索を行うか
set incsearch
" 検索で大文字と小文字を区別しない
set ignorecase
" 検索文字列に大文字と小文字が混在した場合に限り、
" 大文字と小文字を区別して検索。
set smartcase
" 最後尾の検索候補にたどり着いたたら、次に先頭に戻る
set wrapscan
" 置換の時、gを指定しなくても同一業で複数回置換が行われる
set gdefault

" === ビープの設定 ===
" ビープ音をすべて視覚表示に置き換える
set visualbell
" ビジュアルベルの表示内容。空文字なら無効
set t_vb=
" エラーメッセージの表示時にヒープ音を鳴らす
set noerrorbells

" === コマンドラインの設定 ===
" コマンドラインモードで<tab>によるファイル名補完を有効にする
set wildmenu
" コマンドラインモードでのファイル名補完の挙動を指定
set wildmode=list:longest,full
" コマンドラインモードで保存する履歴件数
set history=10000

" === 動作環境と統合関連の設定 ===
" OSのクリップボードをどのレジスタと関連付けるか
set clipboard=unnamed
" マウスの入力を受け付ける
set mouse=a
" Windowsでもパスの区切り文字を/にする
set shellslash

" === タブ/インデントの設定 ===
" タブ入力時を複数の空白文字に置き換える
set expandtab
" 画面上でタブ文字が占める幅
set tabstop=2
" 自動インデントでずれる幅
set shiftwidth=2
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" === プラグインの設定 / vim-plug ===
" autoinstall
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" call plugin
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'pangloss/vim-javascript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
Plug 'mattn/vim-sqlfmt'
call plug#end()

" vim-gitgutter
let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=0
highlight GitGutterAdd ctermfg=2 ctermbg=0
highlight GitGutterChange ctermfg=3 ctermbg=0
set updatetime=1000

" coc
let g:coc_global_extensions = ['coc-eslint', 'coc-explorer', 'coc-fzf-preview', 'coc-html', 'coc-json', 'coc-jedi', 'coc-sql', 'coc-tsserver', 'coc-yaml', 'coc-solargraph', 'coc-copilot', 'coc-docker', 'coc-go', 'coc-prettier']

" vim-airline
let g:airline_powerline_fonts = 1

" theme
highlight Normal guibg=NONE ctermbg=NONE
let g:dracula_colorterm = 0
colorscheme dracula

" nerdtree
let NERDTreeShowHidden=1
filetype plugin indent on
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

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

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<Enter>"
inoremap <silent><expr> <Esc> coc#pum#visible() ? coc#pum#cancel() : "\<Esc>"
inoremap <silent><expr> <C-h> coc#pum#visible() ? coc#pum#cancel() : "\<C-h>"

inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>" " "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
