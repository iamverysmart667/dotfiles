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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'

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
set cursorline
set hlsearch
set incsearch
set laststatus=2
set ttimeoutlen=10
set number

" keybindings
nmap <C-n> :NERDTreeToggle<CR>

" colorscheme
set background=dark
colorscheme solarized 

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<CR>']
