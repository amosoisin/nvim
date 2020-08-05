let g:NVIM_DIR = expand('~/.config/nvim')
let g:CONF_DIR = g:NVIM_DIR . '/conf'

let files = ['load_dein', 'options', 'keymap', 'lsp', 'terminal']
for file in files
    let fname = g:CONF_DIR . '/' . file . '.vim'
    if filereadable(expand(fname))
        execute 'source' . fname
    else
        echo fname . ' is not found'
    endif
endfor
