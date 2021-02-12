nnoremap : ;
nnoremap ; :

autocmd BufNewFile,BufRead *.py nnoremap <C-x>r :!python %

autocmd BufNewFile,BufRead *.c nnoremap <C-x>c :!make

nnoremap <Esc><Esc> :nohlsearch<CR>
