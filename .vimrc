"Vundle config-----------------------------------------{{{
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
":PluginInstall
set nocompatible
filetype  off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'shougo/neocomplcache.vim'
Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'git://github.com/lifepillar/vim-solarized8.git'
Plugin 'git://github.com/vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'
Plugin 'ervandew/supertab'
Plugin 'https://github.com/tc50cal/vim-terminal.git'




call vundle#end()
filetype plugin indent on
"--------------------------------------------------------}}}


let mapleader = " "

syntax on
filetype on
filetype plugin on
filetype indent on


set encoding=utf-8              " set output encoding

set hidden                      " don't unload abondoned buffers

set history=100                 " command history depth
set magic                       " use magic mode for regex

set number                      " always show line numbers
set showmode                    " always show what mode I'm currently editing in
"set nowrap                     " don't wrap lines
set wrap                        " wrap lines 
set tabstop=4                   " a tab is four spaces
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default
set shiftwidth=4                " number of spaces to use for autoindenting
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase


set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set showmatch                   " set show matching parenthesis
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set relativenumber              " show line numbers relative to current line"


set noswapfile                 "Disable swap file


"autocmd bufnewfile *.py r ~/.vim/header/python.header  

runtime macros/matchit.vim


"set backspace 
inoremap <Char-0x07f> <Left><Del>
nnoremap <Char-0x07f>  <Left><Del>

"configer vim when start 
autocmd InsertEnter,InsertLeave * set cul!  "underline in insert mode 
"autocmd VimEnter * :NERDTreeToggle


"Macro-------------------------------------------------------{{{
 let @t='^i	j'
"------------------------------------------------------------}}}
let @r='0d4lj'

"Key remapping-----------------------------------------------{{{
"remapping
nnoremap : ;
nnoremap ; :

"movement
    "line begin
nnoremap H ^
    "line end
nnoremap L $

"editing vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"buffers
nnoremap } :bnext<cr>
nnoremap { :bprevious<cr>




"------------------------------------------------------------}}}

"pluging configeration---------------------------------------{{{

"Nerd Tree
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
"key map 
noremap <leader>e :NERDTreeToggle<CR>

"auto complete 
set complete+=kspell            
set completeopt=menuone,longest 
set shortmess+=c                

"Terminal
nnoremap <leader>tv :TerminalVSplit tcsh<CR>
nnoremap <leader>th :TerminalSplit tcsh<CR>


"-----------------------------------------------------------}}}






"Air-line config--------------------------------------------{{{
"" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" air-line
let g:airline_powerline_fonts = 1

"create dictionary
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.whitespace = 'Î'

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"----------------------------------------------------------}}}
