syntax on
set background=dark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set modeline
