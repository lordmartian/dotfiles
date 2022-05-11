" ======================================
" notes:
" - Use single quotes for vim-plug
" ======================================

" ######################## plugins #########################

" vim-plug begin
call plug#begin('~/.vim/plugs')

" sensible defaults
Plug 'tpope/vim-sensible'

" base16 color scheme
Plug 'chriskempson/base16-vim'
Plug 'mike-hearn/base16-vim-lightline'

" transparent background
Plug 'tribela/vim-transparent'

" lightline status bar
Plug 'itchyny/lightline.vim'
set noshowmode
let g:lightline = {
\   'colorscheme':'base16_default_dark',
\   'separator': {
\       'left':'',
\       'right':''
\   },
\   'subseparator': {
\       'left':'│',
\       'right':'│'
\   },
\   'component': {
\       'left_end': '%#LightlineLeft_active_0_1#%#LightlineLeft_active_0#',
\       'right_end': '%#LightlineRight_active_0_1#%#LightlineRight_active_0#',
\       'tab_left_end': '%#LightlineLeft_tabline_0_1#%#LightlineLeft_tabline_0#',
\       'tab_right_end': '%#LightlineRight_tabline_0_1#%#LightlineRight_tabline_0#',
\       'vim_icon': ''
\   },
\   'component_visible_condition': {
\       'left_end':'0',
\       'right_end':'0',
\       'tab_left_end':'0',
\       'tab_right_end':'0'
\   },
\   'active': {
\       'left': [['left_end', 'mode', 'paste'], ['readonly', 'relativepath']],
\       'right': [['lineinfo', 'right_end'], ['percent'], ['fileencoding', 'fileformat', 'filetype']]
\   },
\   'tabline': {
\       'left': [['tab_left_end', 'vim_icon', 'tabs']],
\       'right': [['close', 'tab_right_end']]
\   }
\}
let g:lightline.component_raw = {'left_end':1, 'right_end':1, 'tab_left_end':1, 'tab_right_end':1}

" remember cursor position
Plug 'farmergreg/vim-lastplace'

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

" always show tabline
set showtabline=2

" show keys typed at bottom right
set showcmd

" disabling mouse support
set mouse=

" relative line numbering
set relativenumber

" indentation with 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" set up code folding
set nofoldenable foldmethod=syntax foldcolumn=1

" highlight search terms
set hlsearch

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

" custom commands
command SetCopy set norelativenumber foldcolumn=0
command SetNoCopy set relativenumber foldcolumn=1

