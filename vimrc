set nocompatible              " be iMproved, required
filetype off                  " required

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

if (has("termguicolors"))
 set termguicolors
endif

call vundle#end()
filetype plugin indent on

set number
syntax enable
colorscheme night-owl
