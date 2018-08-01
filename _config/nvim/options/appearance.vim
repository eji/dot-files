"==========================================
" 見た目に関する設定
"==========================================

" GUI かつ Mac OS Xの場合はフォントのアンチエイリアスを有効にする
if has("gui_running") && has('macunix')
  set antialias
endif

" 暗い背景に合うようにする
set background=dark

" TrueColor対応
set termguicolors

" ベルを鳴らさないための設定
set belloff=all

" 画面に収まりきらない長い行の場合に行の先頭に @@@ を表示して分かるようにする
set display=truncate
