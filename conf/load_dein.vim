let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    let g:rc_dir    = expand('~/.config/nvim/toml')
    let s:toml      = g:rc_dir . '/dein.toml'
    call dein#load_toml(s:toml,      {'lazy': 0})

    let lazy_tomls = ['python', 'web', 'clang']
    for lazy in lazy_tomls
        let s:lazy_toml = g:rc_dir . '/dein_' . lazy . '.toml'
        call dein#load_toml(s:lazy_toml, {'lazy': 1})
    endfor

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable