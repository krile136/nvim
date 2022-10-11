" <Leader>をスペースキーにアサイン
let mapleader = "\<space>"

" tabキー幅を2にする（デフォルトは8)
:set tabstop=2

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" init.vimを保存したら自動反映
autocmd BufWritePost  ~/.config/nvim/init.vim  so ~/.config/nvim/init.vim

"インデント可視化
"set list
"set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" エンコーディング
set encoding=utf-8
scriptencoding utf-8

"jキーを二度押しでESCキー
inoremap <silent> jj <Esc>
inoremap <silent> っj <ESC>

"help日本語化
set helplang=ja

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

let g:onedark_config = {'style': 'warm'}


" 自動でカッコ等を閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"棒状カーソル"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>lh

" ヤンクするとクリップボードに保存される
set clipboard+=unnamed

"ファイルタイトルを表示する"
set title

"行数を表示する"
set number

"マッチするカッコなどを表示　上の設定とかぶる？様子見"
"set showmatch

"分割ウィンドウの移動"
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"vim-airline-themesのタブ用 control + p や +nでタブ移動できる"
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab



" ######################## 検索・置換 ########################

set ignorecase " 大文字小文字の区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan " 検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
set incsearch " 検索文字列入力時に順次対象文字列にヒットさせる
set inccommand=split " インタラクティブに変更

" ######################## 補完 ########################
set wildmode=list:longest " コマンドラインの補完
set infercase " 補完時に大文字小文字を区別しない
set wildmenu "コマンドの補完を有効に
au FileType * setlocal formatoptions-=ro " 自動コメント挿入を回避


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/matsuokahiroyuki/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/matsuokahiroyuki/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/matsuokahiroyuki/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#load_toml('/Users/matsuokahiroyuki/.config/nvim/toml/dein.toml', {'lazy': 0})
call dein#load_toml('/Users/matsuokahiroyuki/.config/nvim/toml/dein_lazy.toml', {'lazy': 1})


" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" colorcheme must put aftr dein#end
colorscheme onedark

let g:comfortable_motion_no_default_key_mappings = 1
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
let g:comfortable_motion_interval = 1.0 
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 3.0


