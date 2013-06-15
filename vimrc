set nocompatible               " be iMproved
filetype off                   " required!

"  Vundle configuration
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles
Bundle "tpope/vim-rails"
Bundle "tpope/vim-haml"
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-endwise"
Bundle "scrooloose/nerdtree"
Bundle "ervandew/supertab"
Bundle "kien/ctrlp.vim"
Bundle "Lokaltog/vim-powerline"
Bundle "mileszs/ack.vim"
Bundle "rphillips/vim-zoomwin"
Bundle "benmills/vimux.git"
Bundle "bronson/vim-trailing-whitespace"
Bundle "Lokaltog/vim-easymotion.git"
Bundle "jeetsukumaran/vim-buffergator.git"
Bundle "zklinger/dbext"
Bundle "sjl/gundo.vim"

" Pretty colors
Bundle "larssmit/vim-getafe"
Bundle "telamon/vim-color-github"
Bundle "wgibbs/vim-irblack"
Bundle "TechnoGate/janus-colors"
Bundle "vim-scripts/Color-Sampler-Pack"
Bundle "altercation/vim-colors-solarized"
Bundle "tpope/vim-vividchalk"
Bundle "vim-scripts/calmar256-lightdark"

filetype plugin indent on     " required!
" End of bundles

syntax on
" Remove the menu bar
if has("gui_running")
  set guioptions-=T
  set guioptions-=r
  set guioptions-=L
endif
" show numbers
set number

" Long lines are not wrapped. Helps me writting shorter lines
set nowrap

" set the leader key to ',' (easy to type)
let mapleader = ","
" set localleader to '\'
let maplocalleader = '\'

" You can type ;w instead of :w
nnoremap ; :
"
set incsearch "Incremental search
set hlsearch "Search highlight
nnoremap <Leader>h :set invhlsearch<CR>

" 256-color terminal
set t_Co=256

" utf-8 by default
set encoding=utf-8

" no ~backup files
set nobackup

" no ~backup files during editing
set nowritebackup

" no .swp files
set noswapfile

" Control +  P for fuzzy file open
let g:ctrlp_working_path_mode = 0

set laststatus=2

" spaces, not tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Quick save file
inoremap <Leader>m <ESC>:w<CR>
noremap <Leader>m <ESC>:w<CR>

inoremap <Leader>n <ESC>:NERDTreeToggle<CR>
vnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Allows for customisations in vimrc.local
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" mapping for buffergator
nnoremap <Leader>b :BuffergatorToggle<cr>

" resize current buffer by +/- 5
nnoremap <Leader>wr :vertical resize -5<cr>
nnoremap <Leader>ws :resize +5<cr>
nnoremap <Leader>w2 :resize -5<cr>
nnoremap <Leader>we :vertical resize +5<cr>

" zoom buffer
nnoremap <Leader>ww :call ZoomWin()<cr><cr>

" vimux
noremap <Leader>tr :call VimuxRunCommand("zeus rspec " . bufname("%"))<CR>
noremap <Leader>tl :call VimuxRunCommand("zeus rspec " . bufname("%") . ":" . line("."))<CR>
noremap <Leader>ta :call VimuxRunCommand("zeus rspec spec")<CR>
noremap <Leader>tt :VimuxRunLastCommand<CR>
noremap <Leader>tq :VimuxCloseRunner<CR>
noremap <Leader>tp :VimuxPromptCommand<CR>
" Quick save and run last command.
inoremap <Leader>a <ESC>:w<CR>:VimuxRunLastCommand<CR>
noremap <Leader>a :w<CR>:VimuxRunLastCommand<CR>

" Tagbar
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nnoremap <F8> :TagbarToggle<CR>

" Quickly edit/reload the vimrc file
nnoremap <silent> <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <silent> <Leader>sv :source $MYVIMRC<CR>

set pastetoggle=<F2>

" Use Ag for searching
let g:ackprg = 'ag --nogroup --nocolor --column'
" Map gundo to F5
nnoremap <F5> :GundoToggle<CR>
