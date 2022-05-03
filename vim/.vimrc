" ======================================
" notes:
" - Use single quotes for vim-plug
" ======================================

" improved settings
set nocompatible

" ######################## plugins #########################

" vim-plug begin
call plug#begin('~/.vim/plugs')

" base16 color scheme
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'

" transparent background
Plug 'tribela/vim-transparent'

" lightline status bar
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme':'base16_default_dark'}
let g:lightline.separator = {'left':'', 'right':''}
let g:lightline.subseparator = {'left':'│', 'right':'│'}

" auto add closing brackets
Plug 'jiangmiao/auto-pairs'

" easy commenting
Plug 'preservim/nerdcommenter'

" tab completion
Plug 'ervandew/supertab'

" easy vertical alignment
Plug 'junegunn/vim-easy-align'

" vim-plug end
call plug#end()

" ####################### settings #########################

" file type specific settings
filetype plugin indent on

" remember last cursor position
augroup vimStartup
  au!
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
augroup END

" allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" command history
set history=1000

" show keys typed at bottom right
set showcmd

" tab completion in command mode
set wildmenu

" show @@@ in the last line if it is truncated.
set display=truncate

" context around the cursor
set scrolloff=5

" disabling mouse support
set mouse=

" relative line numbering
set relativenumber

" indentation with 4 spaces
set tabstop=4 shiftwidth=4 expandtab
set autoindent

" set up code folding
set nofoldenable foldmethod=syntax foldcolumn=1

" highlight search terms
set hlsearch
set incsearch

" highlight line with cursor
set cursorline

" enable wrapping
set wrap

" syntax highlighting
syntax on

" enable truecolors and set theme
let &t_ut=""
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
colorscheme base16-default-dark

" custom commands
command SetCopy set norelativenumber foldcolumn=0
command SetNoCopy set relativenumber foldcolumn=1

