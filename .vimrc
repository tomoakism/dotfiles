""" ---------------参考サイト---------------
" https://maku77.github.io/vim/settings/auto-indent.html
" https://qiita.com/tashua314/items/101f1bec368c75a90251
" https://www.server-world.info//query?os=Debian_11&p=initial_conf&f=7
" https://qiita.com/ykyk1218/items/ab1c89c4eb6a2f90333a
" https://gist.github.com/1508312
" https://qiita.com/_snow_narcissus/items/f1633ecc40814acca4cf
" https://gist.github.com/1508312
" https://itchyny.hatenablog.com/entry/2014/12/25/090000
 
" vi互換の動作を無効化
set nocompatible

" エンコーディング設定
set encoding=utf-8

" ファイルタイプ検出を有効にする
filetype on


""" ---------------表示関係---------------
" 色
" 背景の設定
set background=dark

" カラースキーム設定
syntax enable
colorscheme solarized

" 行番号の表示
set number

" syntaxが有効の場合のコメント文の色を変更
highlight Comment ctermfg=LightCyan

" カーソルの位置を右下に表示
set ruler

" コマンドを画面の最下部に表示
set showcmd

" 自動インデント
set autoindent

" C/C++/Java系のファイルタイプのとき高度なインデント
augroup vimrc
  " 以前のautocmdをクリア
  autocmd!
  autocmd FileType c,cpp,java setl cindent
augroup END  

"" ステータスライン
" ファイル名表示
set statusline=%F

" 変更チェック表示
set statusline+=%m

"読み込み専用かどうか表示
set statusline+=%r

" ヘルプページなら[HELP]と表示
set statusline+=%h

" プレビューウィンドウなら[Preview]と表示
set statusline+=%w

"これ以降は右寄せ表示
set statusline+=%=

" 現在行数/全行数
set statusline+=%l/%L

" ステータスライン常時表示
set laststatus=2

" ウィンドウサイズで折り返し
set wrap

" 一行の文字数が多くてもきちんと描画
set display=lastline

" 補完メニューの高さ設定
set pumheight=10

""" ---------------編集関係---------------
" 括弧入力時対応括弧にカーソルが一瞬飛ぶ
set showmatch

" タブをスペースにする
set expandtab

" タブの文字数
set tabstop=2

" 自動インデントに使われる空白の数
set shiftwidth=2 
" showmatchのカーソル飛ぶ時間を0.1秒の何倍
set matchtime=1

" Swapファイル、Backupファイルをすべて無効化
set nowritebackup
set nobackup
set noswapfile

"バッファを閉じる代わりに隠す
set hidden

"新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen


""" ---------------検索関係---------------
" 検索時大文字/小文字の区別無効化
set ignorecase

" 検索文字に大文字がある場合は大文字小文字を区別
set smartcase

" 検索結果をハイライト
set hlsearch

" 最後尾まで検索を終えたら次の検索で先頭に移る
set wrapscan

" 文字列入力中から検索を開始
set incsearch

" ESC2回押しでハイライト消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>


""" ---------------マクロ及びキー設定---------------
"Cntl+eでカーソル文末 
noremap <C-e> <Esc>$a
 
"Cntl+aでカーソル文頭 
noremap <C-a> <Esc>^a 

"+で数字インクリメント
nnoremap + <C-a> 

"-で数字デクリメント
nnoremap - <C-x>

" j,kによる移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" TABで対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %

" マッピング Y を、行末までのヤンクにする
nnoremap Y y$ 
