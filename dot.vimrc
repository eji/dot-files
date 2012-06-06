set modeline
set nobackup
set incsearch
" Search for ignoring upper / lower case.
set ignorecase
" However, search to distinguish between the upper / lower case, when you search only by mixing uppercase.
set smartcase
set showmatch

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
