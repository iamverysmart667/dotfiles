set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'VundleVim/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'honza/vim-snippets'
Plugin 'dylanaraps/wal.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'stevearc/vim-arduino'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'guns/jellyx.vim'
Plugin 'whatyouhide/vim-gotham'

call vundle#end()            " required
filetype plugin indent on    " required

" general settings
syntax on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set laststatus=2
set ttimeoutlen=10
set number
set splitbelow
set splitright

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Switch windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" move line up/down
nnoremap <S-j> :m .+1<CR>
nnoremap <S-k> :m .-2<CR>
vnoremap <S-j> :m '>+1<CR>
vnoremap <S-k> :m '<-2<CR>

" arduino keybindings
nnoremap <buffer> <F8>  :ArduinoVerify<CR>
nnoremap <buffer> <F9>  :ArduinoUpload<CR>
nnoremap <buffer> <F10> :ArduinoSerial<CR>

" copy to buffer
noremap <Leader>y "+y

" run python
map <F5> :!python %<CR>
map <F6> :!python -i %<CR>

" arduino
let g:arduino_serial_cmd = 'picocom {port} -b {baud} -l'

" colorscheme
set background=dark
set t_Co=256

colorscheme wal
hi Normal guibg=NONE ctermbg=NONE
let g:jellybeans_use_lowcolor_black = 1

" vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
