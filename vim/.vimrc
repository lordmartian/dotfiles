" ======================================
" notes:
" - Use single quotes for vim-plug
" ======================================

" be improved over vi
set nocompatible

" ######################## plugins #########################

" vim-plug begin
call plug#begin('~/.vim/plugs')

" base16 color scheme
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'

" lightline status bar
Plug 'itchyny/lightline.vim'
let g:lightline = {
\   'colorscheme':'base16_default_dark',
\   'subseparator': {
\       'left':'│',
\       'right':'│'
\   },
\   'active': {
\       'left': [['mode', 'paste'], ['readonly']],
\       'right': [['lineinfo'], ['percent'], ['fileencoding', 'fileformat', 'filetype']]
\   }
\}

" auto add closing brackets
Plug 'jiangmiao/auto-pairs'

" tab completion
Plug 'ervandew/supertab'

" load any external project specific plugins
if filereadable(expand('~/.ext_plugins.vim'))
    source ~/.ext_plugins.vim
endif

" vim-plug end
call plug#end()

" ####################### settings #########################

" file specific settings
filetype plugin indent on

" enable syntax highlighting
syntax on

" length of command history
set history=1000

" suggestions menu
set wildmenu
set wildmode=longest:full,full

" always show tabline and statusline
set showtabline=2
set laststatus=2

" show keys typed at bottom right
set showcmd

" dont show mode as we are using lightline
set noshowmode

" context around cursor
set scrolloff=1

" relative line numbering
set relativenumber

" indentation with 4 spaces
set tabstop=4 shiftwidth=4 expandtab autoindent

" set up code folding
set nofoldenable foldmethod=syntax foldcolumn=1

" instantly search and highlight
set incsearch hlsearch

" highlight line with cursor
set cursorline

" enable wrapping
set wrap

" enable truecolors and set theme
let &t_ut=""
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
colorscheme base16-default-dark

" tab completion
set complete=.,t,i

" show @@@ at end when line doesn't fit
set display=lastline

" consider normal, binary and hex numbers for C-a, C-x
set nrformats=bin,hex

" disabling mouse support
set mouse=

" allow backspacing over everything
set backspace=indent,eol,start

" automatically load changed files
set autoread

" timeout
set ttimeout
set ttimeoutlen=100

" ######################### misc ###########################

" remember cursor position
augroup vim_startup
    au!
    autocmd BufReadPost *
    \   if line("'\"") >= 1 && line("'\"") <= line("$") |
    \       exe "normal! g`\"" |
    \   endif
augroup END

" remove background
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi CursorLineNr guibg=NONE ctermbg=NONE
hi FoldColumn guibg=NONE ctermbg=NONE

" commands to allow copying from vim
command SetCopy set norelativenumber foldcolumn=0
command SetNoCopy set relativenumber foldcolumn=1

