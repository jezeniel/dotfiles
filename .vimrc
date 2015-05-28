call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'zeis/vim-kolor'
Plug 'whatyouhide/vim-gotham'

" Syntax
Plug 'chaimleib/vim-renpy'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'mitsuhiko/vim-python-combined'

" Productivity
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'gregsexton/MatchTag'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'cakebaker/scss-syntax.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-eunuch'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

call plug#end()

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
map <C-b> :CtrlPBuffer<CR>
nnoremap <F2> :tabm -1<CR>
nnoremap <F3> :tabm +1<CR>

" NERDTree
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['\.pyc$','\.rpyc$']

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

"gruvbox config
let g:gruvbox_italic = 0
let g:gruvbox_italicize_comments = 0
let g:gruvbox_invert_selection = 0
let g:gruvbox_contrast = 'hard'
set bg=dark
colorscheme gruvbox

" airline
" let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
set laststatus=2

" markdown
let g:vim_markdown_folding_disabled=1

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

" vim-session
let g:session_autosave='no'

"Remove GVIM GUI
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=e
set guifont=Inconsolata\ 12

" Vertical diff
set diffopt+=vertical

