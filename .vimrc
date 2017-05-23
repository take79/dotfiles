"背景は暗色（迫真）
set background=dark
"カラースキーマ
colorscheme lucius
"key mapping
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>
"ツリー表示
autocmd VimEnter * execute 'NERDTree' | wincmd p
"既存のファイルでもslim-syntaxが効くように設定
autocmd BufRead, BufNewFile *.slim setfiletype slim
"構文ハイライト
"syntax on
"行番号
set number
"現在の行をハイライト
set cursorline
"閉じ括弧を自動で
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"対応する括弧を強調
set showmatch
"保存確認
set confirm
"外部での変更を読み直す
set autoread
"検索文字列のハイライト
set hlsearch
"インクリメントサーチ
set incsearch
"検索設定
set ignorecase
set smartcase
"最後尾の次の検索で先頭に移る
set wrapscan
"行末の1文字先までカーソルを動かせるように
set virtualedit=onemore
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]]
"インデント関連
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
"deleteキー
set backspace=indent,eol,start
"不可視文字表示
set list
set listchars=tab:>-,trail:-,eol:$
"マウス関連
set mouse=a
"クリップボードにコピーできるように
set clipboard=unnamed,autoselect
"デフォルトのmode informationを無効化
set noshowmode
"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif
" Required:
set runtimepath+=/Users/kenta/.vim/bundle/repos/github.com/Shougo/dein.vim
" Required:
call dein#begin('/Users/kenta/.vim/bundle')
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('tpope/vim-endwise')
call dein#add('slim-template/vim-slim')
call dein#add('itchyny/lightline.vim')
call dein#add('scrooloose/nerdtree')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
" Required:
call dein#end()
" Required:
filetype plugin indent on
syntax enable
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
"End dein Scripts-------------------------

