" Runtime
runtime! debian.vim

" Syntax
if has("syntax")
  syntax on
endif

" Colors
set background=dark
color desert

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Plugins and indentation
if has("autocmd")
  filetype plugin indent on
endif

" Show (partial) command in status line.
set showcmd

" Show matching brackets.
set showmatch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Automatically save before commands like :next and :make
set autowrite

" Hide buffers when they are abandoned
set hidden

" Enable mouse usage (all modes)
set mouse=a

" vimrc.local
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
