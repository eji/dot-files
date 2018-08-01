"==================================================================
" プラグイン管理
" @see https://github.com/junegunn/vim-plug
"==================================================================

call plug#begin('~/.cache/nvim/plugged')

" ステータスラインの見た目を変えるやつ
Plug 'itchyny/lightline.vim'

" Denite
" TODO: Python3のインストール
" Plug 'Shougo/denite.nvim'

" ファイルシステムをツリー状に表示してくれるやつ
" NERDTreeToggle でロードされるようにしている
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()
