" Vundle begin "
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'junegunn/fzf'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-fireplace'
Plugin 'epeli/slimux'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'chrisbra/csv.vim'
Plugin 'tpope/vim-speeddating'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vimwiki/vimwiki'
call vundle#end()
" Vundle end ""

filetype plugin indent on
                  " take a peek inside"

syntax on         " syntax highlighting"
syntax enable     " syntax highlighting"

set ruler         " cursor position at bottom"
set number        " line numbers"
set rnu           " relative line numbers"
set wildmenu      " tab auto-complete"
set wildignore=*.swp,*.pyc,*.class " ignore file extensions in wildmenu"
set tabstop=2     " num spaces for tabs"
set shiftwidth=2  " num spaces for autoindent"
set expandtab     " replace tabs with spaces"
set equalalways   " new panes are equal sizes"
set autoindent    " always set autoindeing on"
set copyindent    " copy the previous indentation on autoindenting"
set showmatch     " shows matching perin/curly/quote/etc"
set showcmd       " show <leader> command"
set hidden        " not forced to save when switching to buffer"
set nowrap        " don't wrap lines"
set ignorecase    " ignore case when searching "
set smartcase     " ignore case if search pattern is all lowercase"
                  " case sensitive otherwise
set hlsearch      "highlight search
set incsearch     " show search matches as you type"

set history=1000  " more history"
set undolevels=1000
                  " more undos"

set title         " change the title of the terminal"
set textwidth=100 " make it obvious where 80 chars is"
set cursorline    " highlight current line"

set autoread      " reload files changed outside of vim"
set encoding=utf-8
set visualbell    " use visual bell instead of beeping when doing something wrong"

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" jsx
let g:jsx_ext_required=0

" Trying solarized
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

" Seoul 256 / coloring
colo seoul256
set background=dark
let g:seoul256_background=233
"let g:seoul256_current_fg

" alvan/vim-closetag
let g:closetag_filenames="*.html,*.xhtml,*.js"

" custom leader and mappings
let mapleader=" "
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <tab>   }
nnoremap <S-tab> {

" do as I say not as I do
map q: :q
command! Q q
command! W w
command! Wq wq
