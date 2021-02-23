
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Commands
call dein#add('haya14busa/dein-command.vim')

call dein#add('tpope/vim-vinegar')

" Add or remove your plugins here:

call dein#add('tomtom/tlib_vim.git')
call dein#add('MarcWeber/vim-addon-mw-utils')

call dein#add('rakr/vim-one')
call dein#add('altercation/vim-colors-solarized')

" call dein#add('lifepillar/vim-solarized8')
call dein#add('bling/vim-airline')
" call dein#add('dag/vim-fish')
call dein#add('godlygeek/tabular')
" call dein#add('justmao945/vim-clang')
call dein#add('mattn/emmet-vim')
call dein#add('mileszs/ack.vim')
" call dein#add('pangloss/vim-javascript')
call dein#add('sjl/gundo.vim')
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-git')
call dein#add('tpope/vim-markdown')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')

call dein#add('machakann/vim-highlightedyank')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
