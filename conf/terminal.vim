if has('nvim')
	command! -nargs=* Term split | terminal <args>
	command! -nargs=* Termv vsplit | terminal <args>
	tnoremap <silent> <ESC> <C-\><C-n>
endif
