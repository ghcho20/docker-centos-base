set ts=4
set sw=4

set nu
set ai
set ci
set sta
set et
set nobk
set hlsearch
set incsearch
set laststatus=2

colorscheme desert

nnoremap <TAB> <C-f>
nnoremap <S-TAB> <C-b>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set noundofile

if has("syntax")
    syntax on
endif
