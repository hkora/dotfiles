"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode..
set nocompatible
filetype off

"For Ubuntu
"set rtp+=~/.vim/bundle/Vundle.vim/
"For OS X
set rtp+=~/.vim/bundle/vundle/
"
call vundle#rc()

"For Windows
"set rtp+=$VIM/vimfiles/bundle/vundle/
"let path='$VIM/vimfiles/bundle'
"call vundle#rc(path)

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle 
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'plasticboy/vim-markdown'
Bundle 'sukima/xmledit'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-flake8'

"Sets how many lines of history VIM har to remember
set history=400
"Enable filetype plugin
filetype plugin on
filetype indent on

"Have the mouse enabled all the time:
set mouse=a


" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

colorscheme desert

"Highlight current
if has("gui_running")
  set cursorline
  hi cursorline guibg=#333333 
  hi CursorColumn guibg=#333333
endif

"Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set softtabstop=0
" autoindent
set ai
" smartindent
set si

" shiftwidth=4, set the shift width
set sw=4

" tabstop=4, set the tab space
set ts=4

" auto expand tab to space
set et
"
set smarttab

"Set 7 lines to the curors - when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
set nu

"Do not redraw, when running macros.. lazyredraw
set lz

"Change buffer - without saving
set hid

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Incremental searches
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch

"Input font, http://input.fontbureau.com/
set guifont=Input\ 12

  """"""""""""""""""""""""""""""
  " Statusline
  """"""""""""""""""""""""""""""
  "Always hide the statusline
  set laststatus=2

  function! CurDir()
     let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
     return curdir
  endfunction

  "Format the statusline
  set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
set nofen
set fdl=0
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
" set foldclose=all


" Folding : http://vim.wikia.com/wiki/Syntax-based_folding, see comment by Ostrygen au FileType cs set omnifunc=syntaxcomplete#Complete 
au FileType cs set foldmethod=marker 
au FileType cs set foldmarker={,} 
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',) 
au FileType cs set foldlevelstart=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"My information
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
iab xname Hou Ke


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

