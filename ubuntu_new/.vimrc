set nu			"Line numbers on
set nowrap		"Line wrapping off
set incsearch	"Incremental search
set hlsearch
set ignorecase	"Case insensitive search
set smartcase	"Case sensitive search for any capitalized search term

"Formatting (some of these are for coding in C and C++)
set ts=4		"Tabs are 4 spaces
set bs=2		"Backspace over everything in insert mode
set shiftwidth=4	"Tabs under smart indent
set autoindent
set smarttab
set expandtab 	"Use literal tabs instead of spaces

"Visual
set showmatch		" Show matching brackets
set mat=5		" Bracket blinking
set background=dark
syntax on

"Dara added
set vb

" toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" proper indentation and formatting
filetype plugin indent on

"
autocmd FileType python set complete+=k~/.vim/syntax/python3.0.vim

syntax on

map <C-j> :FuzzyFinderTextMate<CR>

set tags=./tags;

let Tlist_Exit_OnlyWindow=1

set listchars=tab:>-,eol:$,trail:.,extends:#

"set iskeyword-={,},[,],(,)
:set hidden

nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
:nnoremap <Leader>r :%s/\<<C-r><C-w>\>/this.<C-r><C-w>
:nnoremap <Leader>f :Ack "<C-r><C-w>" public

match Todo /\s\+$/
