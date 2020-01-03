set nocompatible              " be iMproved, required
filetype off                  " required

" fix backspacing
fixdel
set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'sheerun/vim-polyglot'
"javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0
"typescript
Plugin 'leafgarland/typescript-vim'
" colors
Plugin 'haishanh/night-owl.vim'
"Prettier
Plugin 'prettier/vim-prettier'

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if (has("termguicolors"))
 set termguicolors
endif

call vundle#end()
filetype plugin indent on

set number
syntax enable
colorscheme night-owl
