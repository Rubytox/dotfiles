execute pathogen#infect()

set nocompatible

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number

" airline theme
let g:airline_theme='alduin'

" adds keywords to comments
augroup vimrc_todo
    au!
    au Syntax * syn match MyTodo /\v<(FIXME|NOTE|TODO|OPTIMIZE|XXX|HACK|BUG|WARNING):/
          \ containedin=.*Comment,vimCommentTitle
augroup END
hi def link MyTodo Todo

let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }


let g:clang_library_path='/usr/lib/x86_64-linux-gnu/'

autocmd FileType java setlocal omnifunc=javacomplete#Complete

set shell=zsh\ --login

if !has('nvim')
    set mouse=a
    set ttymouse=sgr
endif
