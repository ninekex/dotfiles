set nocompatible
set number
set relativenumber
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ignorecase
set smartcase
set scrolloff=10
set cursorline
syntax on
set clipboard=unnamedplus
set ttyfast
set hlsearch
set incsearch
set showcmd
set showmatch
set history=1000
set showmode

set wildmenu
set wildmode=list,longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

filetype on
filetype plugin on
filetype indent on

let mapleader='\'

noremap <silent> <Down> gj
noremap <silent> <Up> gk
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk

noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

iab maya9 𝋩
iab note9 NOTE(ninekex):
iab note9n NOTE(nine):
iab note9a NOTE(nina):
iab note9m NOTE(𝋩):
iab note99 NOTE(9):
iab note96 NOTE(<13>):
iab todo9 TODO(ninekex):
iab todo9n TODO(nine):
iab todo9a TODO(nina):
iab todo9m TODO(𝋩):
iab todo99 TODO(9):
iab todo96 TODO(<13>):


augroup templates
    autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
augroup END

call plug#begin()

Plug 'preservim/nerdtree'      " show directories
Plug 'preservim/nerdcommenter' " easier comments
Plug 'preservim/tagbar'        " tags for your code
Plug 'vim-airline/vim-airline' " better bottom bar
Plug 'ap/vim-css-color'        " show hex colors
Plug 'ryanoasis/vim-devicons'  " cool icons
Plug 'jiangmiao/auto-pairs'    " adds matching {}
Plug 'vimwiki/vimwiki'         " for epic note taking
Plug 'neoclide/coc.nvim', {'branch': 'release' } " the epic code completion
Plug 'instant-markdown/vim-instant-markdown' " preview for markdown stuff
"Plug 'mattn/emmet-vim'         " web dev code snippets

call plug#end()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let NERDTreeIgnore=['\.o$','^.git$']

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>


" vimwiki stuff
let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_global_ext = 0
