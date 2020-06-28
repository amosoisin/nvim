set smarttab
set expandtab
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.c set noexpandtab
    autocmd BufNewFile,BufRead *.h set noexpandtab
    autocmd BufNewFile,BufRead Makefile set noexpandtab
augroup END
set tabstop=4
set shiftwidth=4

set number
set t_Co=256

set hlsearch
set wrapscan
set ignorecase
set smartcase
set incsearch

set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set laststatus=2

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
hi NonText    ctermbg=None ctermfg=59 guibg=NONE guifg=None
hi SpecialKey ctermbg=None ctermfg=59 guibg=NONE guifg=None

"colorscheme atom-dark-256
"colorscheme molokai
colorscheme badwolf
