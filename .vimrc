" Vundle-------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'chriskempson/base16-vim'
Plugin 'reedes/vim-thematic'
Plugin 'wting/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2

" Base16-----------------------
colorscheme base16-default
set background=dark


" Airline----------------------
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1

"" https://coderwall.com/p/yiot4q
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

" Split Stuff
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ,d closes the current buffer, but leaves the window (split)
nmap ,d :b#<bar>bd#<CR>

" Turn off gui trash in gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L


" Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set cindent

" Timeout for escape sequences quicker
set timeoutlen=150

" Highlighting
syntax on

" Move temp files to ~/tmp
set nobackup
set swapfile
set dir=/tmp

" Buffer navigation
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


