" init.vim
" vim-plug stuff
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree' " , { 'on':  'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

call plug#end()

set showcmd
set number
set relativenumber
set nohlsearch

" make it pretty
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
