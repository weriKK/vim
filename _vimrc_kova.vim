execute pathogen#infect()

"GUI Window
"
set lines=50
set columns=150
"set guioptions -=m " removes the menubar
"set guioptions -=r " removes the scrollbar
set guioptions -=T " removes the toolbar

"Backup
"
set nobackup
set nowritebackup
set directory^=$VIM/vimtmp// " prefer this directory for storing swap files
set undodir=$VIM/vimtmp//

"Font & Colors
"
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized
call togglebg#map("<F5>")

set encoding=utf-8
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1 " windows direct x font rendering
set guifont=Powerline_Consolas:h12
"set guifont=Consolas:h12

"Editor
syntax enable

set number " show line numbers

set nowrap " dont wrap lines
set expandtab " insert space whenever tab pressed
set tabstop=4 " a tab is 4 spaces
set autoindent
set copyindent " autoindent copies previous indentation
set shiftwidth=4 " autoindent uses 4 spaces by default
set shiftround   " use shiftwidth when indenting with < >
set softtabstop=4 " backspace deletes 4 spaces

set hidden " hide buffers with unwritten changes instead of closing them when opening new file

set ignorecase " ignore case when searching
set smartcase  " ignore case only if search pattern is all lowercase
set hlsearch   " highlight search terms
set incsearch  " show search matches as you type
nmap <silent> ,/ :nohlsearch<CR> " ,/ clears highlighted searches

set showmatch  " show matching parenthesis

set history=1000
set undolevels=1000
set visualbell " dont beep
set noerrorbells " dont beep

set showcmd
set ruler " show position in file

set list
set listchars=tab:>-,trail:.,extends:>,nbsp:.

set mouse=a " enable mouse (enable mouse scrolling)

"Vim can detect file types (by their extension, or by peeking inside the file).
"This enables Vim to load plugins, settings or key mappings that are only useful
"in the context of specific file types. For example, a Python syntax checker
"plugin only makes sense in a Python file.
"
filetype plugin indent on " indenting intelligence is enabled based on the syntax rules for the file type

"Vim Airline
"
set noshowmode " disables the default mode indicator
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

