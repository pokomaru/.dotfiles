""" 設定
"" neovimプラグインの設定(vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-jp/vimdoc-ja'
Plug 'Yggdroot/indentLine'
call plug#end()

" 文字コードをutf-8に変換
set fenc=utf-8

" バックアップファイルを作らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら自動で読み直す
set autoread

" バッファが編集中でもその他のファイルを開けるようにする
set hidden

" 入力中のコマンドをステータスに表示する
set showcmd

" シンタックスカラーリングオン
syntax on

" vimヘルプ日本語化
set helplang=ja,en

"" ビジュアル設定
" neovimのカラーテーマ
colorscheme falcon

" vim-AirlineThemeの変更
let g:airline_theme = 'papercolor'

" 行番号を表示
set number

" 現在の行を強調表示
set cursorline

" 行末の１文字先までカーソルを移動できるようにする
set virtualedit=onemore

" 自動インデント、スマートインデント
set autoindent smartindent

" ビープ音を可視化
set visualbell

" 括弧入力時の対応する括弧を表示
set showmatch

" ステータスラインを常に表示
set laststatus=2

" コマンドラインの補完
set wildmode=list:longest

" vimでGUIのコピー&ペーストと連携する
set clipboard& clipboard^=unnamedplus

" 折り返し時に表示行単位での移動ができるようにする
nnoremap j gj
nnoremap k gk

" キー入力時に\と¥を入れ替える
noremap! ¥ \
noremap! \ ¥

"" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-

" Tabもj機を半角スペースにする
set expandtab

" 行頭以外のTab文字の表示はば (スペースいくつ分)
set tabstop=2

" 行頭でのTab文字の表示幅
set shiftwidth=2

"" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる(インクリメンタルサーチ)
set incsearch

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索後をハイライト表示
set hlsearch

" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 行番号のハイライト設定
hi CursorLineNr term=bold cterm=NONE ctermfg=228 ctermbg=NONE
