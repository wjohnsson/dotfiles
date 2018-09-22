" init.vim
" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
" Surround 
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree' " , { 'on':  'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'
Plug 'nvie/vim-flake8'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'xuhdev/vim-latex-live-preview'
" Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview'
" Color colornames and codes
Plug 'chrisbra/Colorizer'
Plug 'PotatoesMaster/i3-vim-syntax'

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

" Toggle NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Toggle Goyo with Ctrl+g
map <C-g> :Goyo<CR>

" Write and then execute current file with F9
nnoremap <F9> :w<cr>:!python %<cr>

" Set Vim to automatically save the current buffer when you hit Esc twice.
map <Esc><Esc> :w<CR>

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

" Flag unnecessary whitespace
" https://realpython.com/vim-and-python-a-match-made-in-heaven/
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Remove the '[Scratch] [Preview]" window opened by YouCompleteMe (and
" possibly others?)
set completeopt-=preview

" PDF-viewer used by vim-latex-live-preview
let g:livepreview_previewer = 'evince'

" Update latex live preview faster
set updatetime=20000
