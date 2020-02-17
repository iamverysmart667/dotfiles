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
"Plugin 'honza/vim-snippets'
Plugin 'dylanaraps/wal.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'stevearc/vim-arduino'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'guns/jellyx.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'dense-analysis/ale'
Plugin 'majutsushi/tagbar'
Plugin 'xuhdev/SingleCompile'

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
set relativenumber number
set splitbelow
set splitright

let mapleader=","

" copy to buffer
noremap <Leader>y "+y
noremap <Leader>p "+P

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

" colorscheme
set background=dark
set t_Co=256
colorscheme wal
hi Normal guibg=NONE ctermbg=NONE
let g:jellybeans_use_lowcolor_black = 1

" SingleCompile
"nmap <F9> :SCCompile<cr>
"nmap <F10> :SCCompileRun<cr>

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" arduino keybindings
autocmd FileType arduino nnoremap <buffer> <F8>  :ArduinoVerify<CR>
autocmd FileType arduino nnoremap <buffer> <F9>  :ArduinoUpload<CR>
autocmd FileType arduino nnoremap <buffer> <F10> :ArduinoSerial<CR>

" run python
autocmd FileType python map <F9> :!python %<CR>
autocmd FileType python map <F10> :!python -i %<CR>

" run c++
autocmd FileType cpp nnoremap <F9> :!g++ -std=c++17 % <CR>
autocmd FileType cpp nnoremap <F10> :!g++ -std=c++17 % -o %< && ./%< <CR>
autocmd FileType cpp nnoremap <F11> :!./%< <CR>

" tagbar
nmap <S-n> :TagbarToggle<CR>

" vim autopairs
let g:AutoPairsFlyMode = 0

" arduino
let g:arduino_serial_cmd = 'picocom {port} -b {baud} -l'

" vim airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
