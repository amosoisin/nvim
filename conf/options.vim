set smarttab
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py set expandtab
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
autocmd BufNewFile,BufRead *.htm set filetype=html

autocmd VimEnter * nested if @% == '' && s:GetBufByte() == 0 | set filetype=sh | endif
function! s:GetBufByte()
	let byte = line2byte(line('$') + 1)
	if byte == -1
		return 0
	else
		return byte - 1
	endif
endfunction

autocmd BufRead,BufNewFile * nested if @% !~ '\.' && getline(1) !~ '^#!.*' | set filetype=sh | endif
