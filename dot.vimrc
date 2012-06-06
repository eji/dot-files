" vim: set ts=4 sw=4 sts=0:
"-----------------------------------------------------------------------------
set fileformats=unix,dos,mac
if exists('&ambiwidth')
   set ambiwidth=double
endif

set modeline
set nobackup
set wrapscan
set noincsearch
set incsearch
" Search for ignoring upper / lower case.
set ignorecase
" However, search to distinguish between the upper / lower case, when you search only by mixing uppercase.
set smartcase
set showmatch
set hlsearch " enable highlight search
set nonumber " don't display line number
set showcmd " display entering command at status line
set laststatus=2 " display status line always
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P " display character code and newline character.
" change flame size
map <kPlus> <C-W>+
map <kMinus> <C-W>-

set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set tabstop=8
"set columns=80
set expandtab

call pathogen#infect()
syntax on
filetype plugin indent on

"for python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
