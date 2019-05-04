syntax enable		" enable syntax processing
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
" Showcase comments in italics
highlight Comment cterm=italic gui=italic
set background=dark

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
