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
Bundle "tpope/vim-vinegar"
Bundle "ervandew/supertab"
Bundle "bling/vim-airline"
Bundle "mileszs/ack.vim"
Bundle "rphillips/vim-zoomwin"
Bundle "benmills/vimux.git"
Bundle "bronson/vim-trailing-whitespace"
Bundle "jeetsukumaran/vim-buffergator.git"
Bundle "sjl/gundo.vim"
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'othree/html5.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle "pangloss/vim-javascript"
Bundle 'miyakogi/conoline.vim'

Bundle "altercation/vim-colors-solarized"
Bundle "'thoughtbot/pick.vim"

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

set laststatus=2

" spaces, not tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Quick save file: ,m saves file
inoremap <Leader>m <ESC>:w<CR>
noremap <Leader>m <ESC>:w<CR>

" Allows for customisations in vimrc local files
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" mapping for buffergator: ,b opens buffer list
nnoremap <Leader>b :BuffergatorToggle<cr>

" resize current buffer by +/- 5
nnoremap <Leader>wr :vertical resize -5<cr>
nnoremap <Leader>ws :resize +5<cr>
nnoremap <Leader>w2 :resize -5<cr>
nnoremap <Leader>we :vertical resize +5<cr>

" zoom buffer: ,ww zooms into the current buffer
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

set pastetoggle=<F2>

" Use Ag for searching
let g:ackprg = 'ag --nogroup --nocolor --column'
" Map gundo to F5
nnoremap <F5> :GundoToggle<CR>

" airline configuration
" remove separators
let g:airline_left_sep=''
let g:airline_right_sep=''
" set second section to filename
let g:airline_section_b="%f"
" empty third and fourth sections
let g:airline_section_c=""
let g:airline_section_x=""
" put filetype in fifth section
let g:airline_section_y="%Y"

inoremap <C-n> <ESC>:cnext<CR>
nnoremap <C-n> :cnext<CR>
inoremap <C-a> <ESC>:cprev<CR>
nnoremap <C-a> :cprev<CR>

set background=light
colorscheme solarized

" Faster line navigation
nnoremap H ^

" Operator pending counterparts
onoremap H ^
vnoremap H ^
onoremap L $
vnoremap L $
noremap L $

" Fast searching
nnoremap <leader>f :execute ':silent Ack!' shellescape(expand("<cword>")) <cr>
nnoremap <leader>r :execute ':silent Ack!' shellescape(expand("(def\|class\|module) (self.)?<cword>")) <cr>

" Faster <esc> with jk
inoremap jk <esc>
