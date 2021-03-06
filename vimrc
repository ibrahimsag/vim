source ~/.vim/setup/dein.vim

"-----------------------------------------------------------------------------
" Global Stuff
"-----------------------------------------------------------------------------

set clipboard+=unnamed

" Switch on syntax highlighting.
syntax on

set nocompatible

set shell=/bin/sh

" no swap YEAH!
set nobackup
set noswapfile

" Enable persistent undo YEAH!
set undofile
set undodir=~/tmp/vim/undo
"
" Tabstops are 4 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase
"
" Make command line two lines high
set ch=2

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=B$

" Set the status line the way i like it
" set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]\ \ %<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set nolazyredraw

" Don't show the current command in the lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" use mouse scroll
set mouse=a

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=acg

" Setting this below makes it sow that error messages don't disappear after one second on startup.
" set debug=msg

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=1000

" removes the delay when hitting esc in insert mode
" set noesckeys
set ttimeout
set ttimeoutlen=1

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=2

" Allow the cursor to go in to "invalid" place
" set virtualedit=all

" Make the command-line completion better
set wildmenu

" Make it easier to complete buffers, open files, etc...
" set ignorecase

" Same as default except that I remove the 'u' option
set complete=.,w,b,t,i

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 100 chars
set textwidth=0

" Show a colorcolumn at textwidth
" set colorcolumn=120

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
" set clipboard=unnamed

" Automatically read a file that has changed on disk
set autoread
set grepprg=grep\ -nH\ $*
set number
let mapleader = "\\"

" Wipe out all buffers
nnoremap <silent> <leader>wa :1,9000bwipeout<cr>

" Toggle paste mode
nnoremap <silent> <leader>p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
" nnoremap <silent> <leader>cd :lcd %:h<CR>
nnoremap <silent> <leader>md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nnoremap <silent> <leader>n :nohls<CR>

" redraw the screen in case i hit clear on the editor terminal or it gets messy as i scroll
nnoremap <silent> <leader>r :redraw!<CR>

" The following beast is something i didn't write... it will return the
" syntax highlighting group that the current "thing" under the cursor
" belongs to -- very useful for figuring out what to change as far as
" syntax highlighting goes.
nnoremap <silent> <leader>qq :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Make shift-insert work like in Xterm
noremap <S-Insert> <MiddleMouse>
noremap! <S-Insert> <MiddleMouse>

" set text wrapping toggles
nnoremap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

" Add a GUID to the current line
inoremap <C-J>d <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>

" Search the current file for what's currently in the search register and display matches
nnoremap <silent> <leader>gs :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the word under the cursor and display matches
nnoremap <silent> <leader>gw :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" Search the current file for the WORD under the cursor and display matches
nnoremap <silent> <leader>gW :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:nohls<CR>

" sweet
noremap ; :
noremap : ;

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

" I don't like it when the matching parens are automatically highlighted
" let loaded_matchparen = 1

" Highlight the current line and column
" Don't do this - It makes window redraws painfully slow
set nocursorline
set nocursorcolumn

if has("mac")
  let g:main_font = "Consolas:h9"
  let g:small_font = "Consolas:h9"
else
  let g:main_font="Source\ Code\ Pro\ for\ Powerline\ 12"
  let g:small_font="Source\ Code\ Pro\ for\ Powerline\ 12"
endif

function! DiffCurrentFileAgainstAnother(snipoff, replacewith)
    let currentFile = expand('%:p')
    let otherfile = substitute(currentFile, "^" . a:snipoff, a:replacewith, '')
    only
    execute "vertical diffsplit " . otherfile
endfunction

command! -nargs=+ DiffCurrent call DiffCurrentFileAgainstAnother(<f-args>)


augroup Binary
  au!
  au BufReadPre   *.bin let &bin=1
  au BufReadPost  *.bin if &bin | %!xxd
  au BufReadPost  *.bin set filetype=xxd | endif
  au BufWritePre  *.bin if &bin | %!xxd -r
  au BufWritePre  *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END
"-----------------------------------------------------------------------------
" Set up the window colors and size
"-----------------------------------------------------------------------------

" let g:airline_theme='one'
colorscheme one
set background=dark
nohls

" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! %!sudo tee > /dev/null %

" gundo
noremap <leader>g :GundoToggle<CR>

" ack
nnoremap <leader>a <Esc>:Ack!

set completeopt=menuone,longest,preview

cnoremap :W :w

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#trailing_format = 'trl[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'ind[%s]'

set showtabline=0

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

let g:netrw_banner=0   " disable banner
" let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set foldmethod=indent

let g:airline#extensions#ale#enabled = 1

set path+=**

nnoremap <Leader>c :set cursorcolumn!<cr>
