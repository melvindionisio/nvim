set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000
set textwidth=120

set backupdir=~/.vim-tmp
set directory=~/.vim-tmp

syntax on
"set term=xterm-256color

set number                  " show line numbers
"set relativenumber          " show relative line numbers

"set nowrap                  " turn off line wrapping
set wrap                    " turn on line wrapping
set wrapmargin=8            " wrap lines when coming within n characters from side
set linebreak               " set soft wrapping
set showbreak=…             " show ellipsis at breaking
set cursorline              " Underlining the current line
"set cursorcolumn           " Highlight the current column
set linespace=7

 set autoindent              " automatically set indent of new line
set smartindent

" helper for indent mistake
set list listchars=tab:»·,trail:·

set matchpairs+=<:>
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2
let g:user_emmet_leader_key=','

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,nbsp:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

" Tab control
set expandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=3               " the visible width of tabs
set softtabstop=3           " edit as if the tabs are 4 characters wide
set shiftwidth=3            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" open new split panes to right and below
set splitright
set splitbelow

if has('mouse')
    set mouse=a
    " set ttymouse=xterm2
endif


" Clipboard Settings
"let g:clipboard = {
"\   'name': 'myClipboard',
"\   'copy': {
"\      '+': 'tmux load-buffer -',
"\      '*': 'tmux load-buffer -',
"\    },
"\   'paste': {
"\      '+': 'tmux save-buffer -',
"\      '*': 'tmux save-buffer -',
"\   },
"\   'cache_enabled': 1,
"\ }
let g:ctrl_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
