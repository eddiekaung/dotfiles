syntax enable		" enable syntax processing
filetype plugin on
set nocompatible

set t_Co=256            " request terminal to use 256 colors
set tabstop=8		" number of visual spaces per tab
set softtabstop=4	" number of spaces in tab when editing
set shiftwidth=4        " number of spaces with << and >>
set expandtab		" tabs are spaces
set wildmenu	        " visual autocomplete for command menu
set showmatch		" hightlight matching [{()}]
set incsearch		" search as characters are entered
set hlsearch		" highlight search matches
set colorcolumn=80      " highlight column 
set autoindent
set textwidth=79
set autoread            " Auto reload changed files
set laststatus=2        " Show status line on startup
set splitright          " Open new splits to the right
set splitbelow          " Open new splits to the bottom
set showcmd             " Show size of visual selection
set ignorecase
set smartcase
" set binary		" No new line at the end of file
" set noeol
" Showcase comments in italics
highlight Comment cterm=italic gui=italic
set background=dark

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'gabrielelana/vim-markdown'
call plug#end()


map <C-o> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

set path+=**            " Fuzzy finder

" Remapping for navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:markdown_enable_spell_checking = 0
