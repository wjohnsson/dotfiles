" init.vim

" vim-plug plugin manager
call plug#begin('~/.local/share/nvim/plugged')

" File system explorer
Plug 'scrooloose/nerdtree'

" Surround identifier with brackets etc.
Plug 'tpope/vim-surround'

" Allow for reapeating of certain plugin-commands
Plug 'tpope/vim-repeat'

" Distraction free writing
Plug 'junegunn/goyo.vim'

" Static syntax and style checker for Python source code
Plug 'nvie/vim-flake8'

" Insert or delete brackets, parenthesis and quotes in pair
Plug 'jiangmiao/auto-pairs'

" Shows a git diff in the 'gutter'. 
Plug 'airblade/vim-gitgutter'

" Live previewing LaTeX PDF Output.
Plug 'xuhdev/vim-latex-live-preview'

" Highlight colornames and codes.
Plug 'chrisbra/Colorizer'

" Better syntax highlighting for i3 config files
Plug 'PotatoesMaster/i3-vim-syntax'

" Better syntax highlighting for C
Plug 'justinmk/vim-syntax-extra'

" Best color scheme <3
Plug 'morhetz/gruvbox'

call plug#end()

" Show command in bottom right corner as it is being typed
set showcmd

" Show line number
set number

" Show line number relative to cursor position
set relativenumber

" Don't highlight searches
set nohlsearch

" Make it pretty
set background=dark
colorscheme gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 1 
syntax on

" Tab as 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Toggle NERDTree with Ctrl+n.
map <C-n> :NERDTreeToggle<CR>

" Toggle Goyo with Ctrl+g.
map <C-g> :Goyo<CR>

" Write and then execute current file with F9.
nnoremap <F9> :w<cr>:!python %<cr>

" Set Vim to automatically save the current buffer when you hit Esc twice.
map <Esc><Esc> :w<CR>


" PDF-viewer used by vim-latex-live-preview.
let g:livepreview_previewer = 'evince'

" Don't update latex live preview as often. Instead update mostly on save.
set updatetime=20000

" Displays a horizontal line at column 80.
set colorcolumn=80

" Use PEP 8 indentation in python files
" https://realpython.com/vim-and-python-a-match-made-in-heaven/
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
