" show trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" delete trailing whitespace on write
" autocmd BufWritePre * :%s/\s+$//g

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tomasr/molokai'
Plug 'szw/vim-tags'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdcommenter'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/goyo.vim'
Plug 'calviken/vim-gdscript3'
Plug 'mattn/emmet-vim'
Plug 'vim/killersheep'
Plug 'tpope/vim-repeat'
Plug 'ziglang/zig.vim'

call plug#end()
" emmet
let g:user_emmet_leader_key='<C-C>'

" molokai
let g:molokai_original = 1
colorscheme molokai
syntax on

" sneak.vim
" nnoremap f <Plug>Sneak_f
" nnoremap F <Plug>Sneak_F
" nnoremap t <Plug>Sneak_t
" nnoremap T <Plug>Sneak_T

" ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set incsearch
set nocompatible
set relativenumber number
syntax on
set autoindent
set smartindent
set noswapfile
set hlsearch
set splitbelow splitright
autocmd Filetype * setlocal formatoptions-=c formatoptions-=o formatoptions-=r

set t_Co=256

set tabstop=4 shiftwidth=4
set expandtab

set ruler
set visualbell
set backspace=indent,eol,start

let g:netrw_banner=0 " disable banner!!

" shortcuts/bindings

let mapleader = " "

autocmd FileType markdown inoremap <C-n> <ESC>yypVr-o
autocmd FileType markdown inoremap <bslash>ul - [](<++>)<ESC>^3li
autocmd FileType markdown inoremap <bslash><Space> <ESC>/<++><CR>:noh<CR>:echo<CR>"_ca<
autocmd FileType markdown setlocal tabstop=2
"TODO: rework \ul and \<spc> for new format

nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

map <leader>sf :w<CR>
map <leader>q <ESC><C-w>q
nnoremap - }
nnoremap = {
nnoremap <C-e> :noh<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap Y y$
nnoremap <silent> <C-y> :normal! 2<CR>
nnoremap <leader>. :CtrlPTag<cr>

nnoremap <leader>pi :PlugInstall<CR>
nnoremap <leader>pu :PlugUpdate<CR>

vnoremap > >gv
vnoremap < <gv

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
