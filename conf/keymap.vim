nnoremap : ;
nnoremap ; :

autocmd BufNewFile,BufRead *.py nnoremap <C-x>r :!python %

autocmd BufNewFile,BufRead *.c nnoremap <C-x>r :!gcc -o %:r % && ./%:r
autocmd BufNewFile,BufRead *.c nnoremap <C-x>m :!make

autocmd BufNewFile,BufRead *.html nnoremap <C-x>r :!xdg-open % &

nnoremap <Esc><Esc> :nohlsearch<CR>
