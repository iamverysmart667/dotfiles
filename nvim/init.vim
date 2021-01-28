call plug#begin('~/.config/nvim/plugged')

" Plugins
"Plug 'epilande/vim-react-snippets'
Plug 'lervag/vimtex'
"Plug 'lilydjwg/colorizer'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim'
"Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
"Plug 'preservim/nerdtree'
"Plug 'majutsushi/tagbar'
"Plug 'mattn/emmet-vim'
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Markdown
Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
"Plug 'shime/vim-livedown'
Plug 'dhruvasagar/vim-table-mode'


" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'dylanaraps/wal.vim'

call plug#end()

let g:table_mode_corner='|'

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

let g:livedown_browser = "qutebrowser"

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

" move line up/down
"nnoremap <S-j> :m .+1<CR>
"nnoremap <S-k> :m .-2<CR>
"vnoremap <S-j> :m '>+1<CR>
"vnoremap <S-k> :m '<-2<CR>

" copy to buffer
noremap <Leader>y "+y
noremap <Leader>p "+P

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" C++
"autocmd FileType cpp nnoremap <F9> :!g++ -DLOCAL -Wall -Wextra -pedantic -std=c++11 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -std=c++14 -g % -o %< <CR>
"autocmd FileType cpp nnoremap <F10> :!g++ -DLOCAL -Wall -Wextra -pedantic -std=c++11 -O2 -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -std=c++14 -g % -o %< && ./%< <CR>
autocmd FileType cpp nnoremap <F11> :! ./%< <CR>
autocmd FileType cpp nnoremap <F9> :!g++ -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -Wshift-overflow=2 -DLOCAL -std=c++14 -g % -o %< <CR>
autocmd FileType cpp nnoremap <F10> :!g++ -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -Wshift-overflow=2 -DLOCAL -std=c++14 -g % -o %< && ./%< <CR>
autocmd FileType scala nnoremap <F9> :!scalac % <CR>
autocmd FileType scala nnoremap <F10> :!scalac % && scala %< <CR>
autocmd FileType java nnoremap <F9> :!javac % <CR>
autocmd FileType java nnoremap <F10> :!javac % && java %< <CR>

" CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Lightline
let g:lightline = {
  \ 'colorscheme': 'wal',
  \ }

" Colorscheme
set background=dark
colorscheme wal
hi Pmenu ctermbg=0

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" UltiSnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ALE
let g:ale_linters = {'c': ['clang'], 'cpp': ['g++']}
