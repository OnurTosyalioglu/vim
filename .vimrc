set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'dart-lang/dart-vim-plugin'

Plug 'chr4/nginx.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'mattn/emmet-vim'

Plug 'itchyny/lightline.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree'

Plug 'majutsushi/tagbar'

Plug 'dracula/vim'

Plug 'storyn26383/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

call plug#end()

filetype plugin indent on
syntax on

" file spec
set encoding=utf-8
set fileencoding=utf-8
set nospell
" file spec

" dracula
let g:dracula_italic = 0
" dracula

" indenting
set tabstop=2
set autoindent
set shiftwidth=2
set backspace=indent,eol,start
" indenting

" split
set splitbelow
set splitright
" split

" ui
set laststatus=2
set signcolumn=yes
set number
" ui

" tagbar
let g:tagbar_width = 25
" tagbar

" emmet
let g:user_emmet_expandabbr_key = '<c-e>'
" emmet

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
" lightline

" git gutter
" git gutter

" nerd tree
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize = 20
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerd tree

" vim surround
" vim surround

" vim fugitive
" vim fugitive

" editor config
" editor config

" ulti snips
let g:UltiSnipsEditSplit="vertical"

" ubuntu & mac
let g:UltiSnipsSnippetsDir = "/Users/tositos/.vim/UltiSnips"
" ulti snips

set completeopt+=preview
set completeopt+=menuone
set completeopt+=longest

" auto close preview window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" auto close quickfix window
autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix" | quit | endif

" key bindings
map nt :NERDTreeToggle<CR>
map ter :terminal<CR>
map fzf :FZF<CR>
map git :Git 
map hs <C-w>s
map vs <C-w>v
map lo :lopen<CR>
map lc :lclose<CR>
map qo :copen<CR>
map qc :cclose<CR>
nmap <F8> :TagbarToggle<CR>
map nq :q!<CR>
map wq :wq<CR>
map jd :call CocAction('jumpDefinition', 'vsplit')<CR>
map gad :Gwrite<CR
map gco :Gcommit<CR>
map gpu :Gpush<CR>
map wj :wincmd j<CR>
map wk :wincmd k<CR>
map wl :wincmd l<CR>
map wh :wincmd h<CR>
" key bindings

" window swap
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" window swap

nnoremap pret :silent %!yarn prettier % --write<CR>

