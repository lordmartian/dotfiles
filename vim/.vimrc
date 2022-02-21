" Notes:
" - Use single quotes for vim-plug

" ======================== defaults ========================

" load default settings
source $VIMRUNTIME/defaults.vim

" disabling mouse support
set mouse=

" ======================= vim-plug =========================

" vim-plug begin
call plug#begin('~/.vim/plugs')

" gruvbox color scheme
Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=0

" lightline status bar
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme':'one'}
let g:lightline.separator = {'left':'', 'right':''}
let g:lightline.subseparator = {'left':'│', 'right':'│'}

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

" kind of outline panel
Plug 'preservim/tagbar'

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

" set theme
let &t_ut=""
set background=dark
colorscheme gruvbox

" enable truecolor
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
set termguicolors

" custom commands
command SetCopy set nonumber norelativenumber foldcolumn=0
command SetNoCopy set number relativenumber foldcolumn=2

