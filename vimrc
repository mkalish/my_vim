execute pathogen#infect()
syntax on " enable syntax processing
filetype indent on " load filetype specific indent files
" color scheme
colorscheme badwolf

" tab settings
set tabstop=4 " number of spaces that a TAB character takes up
set softtabstop=4 " number of spaces in a tab when editing
set expandtab " all tabs are rendered as spaces

set number " show all line numbers

set showcmd " show last command run in bottom right

set cursorline " highlight the currently selected line

set wildmenu " show a visual autocomplete for command menu

set lazyredraw " redraw only when we really really have to

set showmatch " shows matches for brackets, parethenses and braces [{()}]

" search settings
set incsearch " search as characters are entered
set hlsearch "  highlight matches from search
" turn off search highlight with ,<space>
nnoremap <leader><space> :noh<CR>
"fold settings
set foldenable " enable folding
set foldlevelstart=10 " open almost all folds by default
set foldnestmax=10 " 10 nested fold max

" space to open/close folds
nnoremap <space> za

set foldmethod=indent " fold based on indent level

" MOVEMENT
" move vertically by line (ignore wrapped lines)
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
" map $/^ to nothing
nnoremap $ <nop>
nnoremap ^ <nop>
" move to the last inserted text
nnoremap gV `[v`]

" Leader shortcuts
let mapleader=","
" jk is escape
inoremap jk <esc>

" toggle gundo on
nnoremap <leader>u :GundoToggle<CR>

" set super save aka save the session of all open windows
nnoremap <leader>s :mksession<CR>

" open ag.vim the silver searcher
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:tbb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" intelligently place vim backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
