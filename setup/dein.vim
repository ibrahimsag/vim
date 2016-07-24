
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')


call dein#add('Shougo/vimproc.nvim')
call dein#add('Shougo/unite.nvim')
call dein#add('Shougo/vimshell.nvim')
call dein#add('Shougo/deoplete.nvim')
" Add or remove your plugins here:

call dein#add('altercation/vim-colors-solarized')
call dein#add('neovimhaskell/haskell-vim')
call dein#add('bling/vim-airline')
call dein#add('bling/vim-bufferline')
call dein#add('dag/vim-fish')
call dein#add('godlygeek/tabular')
call dein#add('justmao945/vim-clang')
call dein#add('kchmck/vim-coffee-script')
call dein#add('mattn/emmet-vim')
call dein#add('mileszs/ack.vim')
call dein#add('pangloss/vim-javascript')
call dein#add('pearofducks/ansible-vim')
call dein#add('scrooloose/syntastic')
call dein#add('sjl/gundo.vim')
call dein#add('sontek/minibufexpl.vim')
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-f')
call dein#add('tpope/vim-git')
call dein#add('tpope/vim-markdown')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')
call dein#add('neovimhaskell/haskell-vim')


" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
