" Notes:
" - Use single quotes for vim-plug

" ======================== defaults ========================

" load default settings
source $VIMRUNTIME/defaults.vim

" ======================= vim-plug =========================

" vim-plug begin
call plug#begin('~/.vim/plugs')

" dracula color scheme
Plug 'dracula/vim', {'as':'dracula'}
let g:dracula_italic=0

" lightline status bar
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme':'dracula'}
let g:lightline.separator = {'left':'', 'right':''}
let g:lightline.subseparator = {'left':'|', 'right':'|'}

" matching brackets coloring
Plug 'frazrepo/vim-rainbow'
au FileType c,cpp,h,py call rainbow#load()

" auto add closing brackets
Plug 'jiangmiao/auto-pairs'

" easy commenting
Plug 'preservim/nerdcommenter'
filetype plugin on

" directory explorer
Plug 'preservim/nerdtree'

" tab completion
Plug 'ervandew/supertab'

" easy vertical alignment
Plug 'junegunn/vim-easy-align'

" vim-plug end
call plug#end()

" ======================= settings =========================

" use relative line numbering
set number relativenumber

" tab size 4 and convert tabs to spaces
set tabstop=4 shiftwidth=4 expandtab

" auto-indenting new lines
set autoindent

" set up code folding
set nofoldenable foldmethod=syntax foldcolumn=2

" highlight search terms
set hlsearch

" for vim truecolor inside tmux
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" set theme
set background=dark
colorscheme dracula

" enable truecolor
set t_Co=256
set termguicolors

" custom commands
command SetCopy set nonumber norelativenumber foldcolumn=0
command SetNoCopy set number relativenumber foldcolumn=2

