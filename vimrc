set encoding=utf8
set t_Co=256
syntax on
syntax enable

call plug#begin('~/.vim/plugged')
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'plasticboy/vim-markdown', { 'for': ['md', 'markdown'] }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'lumiliet/vim-twig', { 'for': 'twig' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

" General
set timeout timeoutlen=500 ttimeoutlen=100
set ttyfast
set lazyredraw
set number
set relativenumber
set history=1000
set showmode
set laststatus=2
set splitright
set splitbelow
set autoread
set viminfo=""
set showmatch
set scrolloff=5
set list
set listchars=tab:→\ ,trail:·,extends:❯,precedes:❮
set backspace=indent,eol,start
set wildmenu
set wildmode=full
set autoread
au FocusGained * :checktime

" Color
colorscheme nord
set background=dark
" This breaks colors in tmux
" set termguicolors
set cursorline
set colorcolumn=+1
set linespace=4
let g:airline_theme='nord'
let g:nord_italic_comments = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1
let g:nord_comment_brightness = 20
let g:tmuxline_powerline_separators = 0

" Mouse
set mouse=a

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Swap
set noswapfile
set nobackup
set nowritebackup

" Indentation
filetype plugin on
filetype indent on
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap
set linebreak
set formatoptions+=j
set textwidth=80

" Keybindings
let mapleader=','
nnoremap <C-p> :GitFiles<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
noremap j gj
noremap k gk
inoremap jk <esc>
nnoremap <leader><space> :nohlsearch<CR>
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
vnoremap < <gv
vnoremap > >gv
nnoremap Q <nop>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gvdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" Drupal
augroup filetypedetect
  au! BufRead,BufNewFile *.module setfiletype php
  au! BufRead,BufNewFile *.install setfiletype php
  au! BufRead,BufNewFile *.test setfiletype php
  au! BufRead,BufNewFile *.inc setfiletype php
  au! BufRead,BufNewFile *.profile setfiletype php
  au! BufRead,BufNewFile *.view setfiletype php
  au! BufRead,BufNewFile *.theme setfiletype php
augroup END

" ale
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_javascript_prettier_options = '--single-quote --no-editorconfig --print-width ' . &textwidth . ' --prose-wrap always --trailing-comma es5 --semi --config-precedence prefer-file'
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \}

let g:ale_fixers = {
      \   'markdown': ['prettier'],
      \   'javascript': ['prettier'],
      \   'json': ['prettier'],
      \   'css': ['prettier'],
      \   'scss': ['prettier'],
      \}

" emmet
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" jsx
let g:jsx_ext_required = 0

" languages client
set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ }
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
let g:LanguageClient_loggingLevel = 'DEBUG'
let g:deoplete#enable_at_startup = 1

" Rust
let g:rustfmt_autosave = 1
