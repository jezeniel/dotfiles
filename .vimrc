autocmd!

" NeoBundle Start
if has('vim_starting')
  set nocompatible " Be iMproved

  " required
  set runtimepath+=~/.vim/bundle/neobundle.vim/ 
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" required
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'gmarik/vundle'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'bling/vim-airline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

call neobundle#end()

filetype plugin indent on " required

" NeoBundle end

syntax on
set history=700
set autoread
set noshowmode

" Turn of wordwrap by default
set nowrap

" custom key mappings
let mapleader = ","
let g:mapleader = ","
map <leader>ss :setlocal spell!<CR>
map <leader>cl :set cursorline!<CR>
map <leader>ln :setlocal number!<CR>
map <leader>gg :GitGutterToggle<CR>
map <leader>ng :IndentGuidesToggle<CR>
map <leader>nw :set wrap!<CR>
map <C-n> <Plug>NERDTreeTabsToggle<CR>
nnoremap <F2> :tabm -1<CR>
nnoremap <F3> :tabm +1<CR>

" NERDTree
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['\.pyc$']

" ctrlp
let g:ctrlp_working_path_mode = 'ra'

" Tab management
map <leader>tn :tabnew<CR>

"GitGutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" Unite
if executable('ack')
  " Use ack in unite grep source.
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts =
  \ '-i --no-heading --no-color -k -H'
  let g:unite_source_grep_recursive_opt = ''
endif
nnoremap <leader>/ :<C-u>Unite grep:.<CR>

" kolor config
" let g:kolor_italic = 1
" let g:kolor_bold = 1
" let g:kolor_underline = 0
" let g:kolor_alternative_matchparen = 0
" colorscheme kolor

"gruvbox config
" let g:gruvbox_italic = 0
" let g:gruvbox_italicize_comments = 0
" let g:gruvbox_invert_selection = 0
" let g:gruvbox_contrast = 'hard'
set bg=dark
colorscheme solarized

if has('gui_running')
  set bg=light
else
  set bg=dark
endif

" colorscheme solarized
let g:solarized_termcolors=256

" airline
" let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
set laststatus=2

highlight CursorLine cterm=bold
set colorcolumn=80

" Line numbering
set number

" Linebreak on 500 characters
set lbr
set tw=500

" 1 tab == 2 spaces
" set smarttab
set tabstop=2
set shiftwidth=2

" Use spaces instead of tabs
set expandtab

set ai " Auto indent
" set si " Smart indent


set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Disable backup
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

" Vertical diff
set diffopt+=vertical

" Auto reload when modified .vimrc

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  autocmd bufwritepost .vimrc AirlineRefresh
endif
