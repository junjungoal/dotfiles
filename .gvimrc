"
" Custom
"

set encoding=utf8
scriptencoding utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set backspace=2

set showtabline=2  " タブを常に表示
set laststatus=2
set imdisable      " IMを無効化
set transparency=10 " 透明度を指定
map <silent> gw :macaction selectNextWindow:
map <silent> gW :macaction selectPreviousWindow:
set antialias
"set guifont=Monaco:h12
set guifont=Hack:h12
set lines=60 columns=150
set guioptions-=T
set showcmd   
"バックアップファイルを作成しない
set nobackup
"Beep Off
set visualbell t_vb=

"highlight CursorLine guibg=Red

"勝手に改行しない
set textwidth=0

" タブ
ca tn tabnew

" colorscheme
augroup gvimrc
  autocmd!
  autocmd ColorScheme * highlight LineNr ctermfg=11 guifg=#707880
augroup END
set background=dark
colorscheme hybrid

