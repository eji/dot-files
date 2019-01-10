let mapleader="\<Space>"

""==================================================================
"" プラグイン管理
""==================================================================
source ~/.config/nvim/plugins.vim


"==================================================================
" Options
"
" @see https://vim-jp.org/vimdoc-ja/quickref.html#option-list
"==================================================================
set runtimepath+=~/.config/nvim/options
runtime! options/*.vim


" カラーテーマ
syntax enable
set background=dark
colorscheme solarized

" 起動時にカーソルの色が変わるようにする
let g:conoline_auto_enable = 1
