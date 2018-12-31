"==================================================================
" プラグイン管理
" @see https://github.com/junegunn/vim-plug
" TODO: 後でVim標準のプラグイン機能を使うようにすること
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

" インデントを色分けして表示してくれる
" :IndentGuidesEnable で有効にできる
Plug 'nathanaelkane/vim-indent-guides'

" カラーテーマ
Plug 'altercation/vim-colors-solarized'

" 現在のカーソルの行を変える
Plug 'miyakogi/conoline.vim'

" fzfを使うため
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()
