call plug#begin('~/.config/nvim/plugged')

" Plugins
Plug 'epilande/vim-react-snippets'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Markdown
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
"Plug 'shime/vim-livedown'
"Plug 'dhruvasagar/vim-table-mode'


" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'dylanaraps/wal.vim'

call plug#end()
 
let g:AutoPairsMultilineClose=0

let g:table_mode_corner='|'

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

let g:livedown_browser = "qutebrowser"

"augroup remember_folds
  "autocmd!
  "autocmd BufWinLeave * mkview
  "autocmd BufWinEnter * silent! loadview
"augroup END

let javaScript_fold=1
let cpp_fold=1
set foldmethod=syntax
set updatetime=300
set foldlevelstart=99
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set relativenumber number
set splitbelow
set splitright

let mapleader="\<Space>"

" move line up/down
nnoremap <C-j> :m .+1<CR>
nnoremap <C-k> :m .-2<CR>
vnoremap <C-j> :m '>+1<CR>
vnoremap <C-k> :m '<-2<CR>


" open and save
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" copy and paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" copy/paste and jump to the end of line
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

highlight lCursor guifg=NONE guibg=Cyan

" C++
autocmd FileType cpp nnoremap <F11> :! ./%< <CR>
autocmd FileType cpp nnoremap <F9> :!g++ -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -Wshift-overflow=2 -DLOCAL -std=c++17 -g % -o %< <CR>
autocmd FileType cpp nnoremap <F10> :!g++ -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector -Wshift-overflow=2 -DLOCAL -std=c++17 -g % -o %< && ./%< <CR>

" CSS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Lightline
let g:lightline = { 'colorscheme': 'wal'}

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
nmap <silent> gn <Plug>(coc-rename)

" ALE
let g:ale_linters = {'c': ['clang'], 'cpp': ['g++']}
