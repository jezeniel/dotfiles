" Vundle Start
set nocompatible
filetype off "required

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" required
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'gregsexton/MatchTag'
Bundle 'aaronbieber/quicktask'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'zeis/vim-kolor'
Bundle 'morhetz/gruvbox'
Bundle 'airblade/vim-gitgutter'
Bundle 'sjl/gundo.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'bling/vim-airline'

filetype plugin indent on " required

" Vundle end

syntax on
set history=700
set autoread
set noshowmode

" custom key mappings
let mapleader = ";"
let g:mapleader = ";"
map <leader>ss :setlocal spell!<CR>
map <leader>cl :set cursorline!<CR>
map <C-n>  <Plug>NERDTreeTabsToggle<CR>
map <leader>ln :setlocal number!<CR>
map <leader>gg :GitGutterToggle<CR>
map <leader>ng :IndentGuidesToggle<CR>
map <leader>nw :set wrap!<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F2> :tabm -1<CR>
nnoremap <F3> :tabm +1<CR>

"GitGutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" kolor config
" let g:kolor_italic = 1
" let g:kolor_bold = 1
" let g:kolor_underline = 0
" let g:kolor_alternative_matchparen = 0

"gruvbox config
if has('gui_running') || &term == "xterm-256color" || &term == "rxvt-unicode-256color"
  let g:gruvbox_italic = 1
else
  let g:gruvbox_italic = 0
endif
let g:gruvbox_invert_selection = 0
let g:gruvbox_contrast = 'hard'
set bg=dark
colorscheme gruvbox

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

highlight CursorLine cterm=bold
set colorcolumn=80

" Line numbering
set number

" Linebreak on 500 characters
set lbr
set tw=500

" 1 tab == 2 spaces
set smarttab
set tabstop=2
set shiftwidth=2

" Use spaces instead of tabs
set expandtab

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set nobackup
set nowb
set noswapfile

set hidden

set lazyredraw

set ignorecase
set smartcase
set hlsearch
set incsearch

set ruler
set magic

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

if len(argv()) > 0
  let g:nerdtree_tabs_open_on_console_startup = 0
else
  let g:nerdtree_tabs_open_on_console_startup = 1
endif

let g:nerdtree_tabs_focus_on_files = 0
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['\.pyc$']

" let g:Powerline_symbols = 'fancy'
let g:syntastic_javascript_checkers = ['jshint']
let g:gitgutter_map_keys = 1

"Remove GVIM GUI
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=e
set guifont=Inconsolata\ 10

autocmd BufNewFile,BufRead *.quicktask setf quicktask
