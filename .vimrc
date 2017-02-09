execute pathogen#infect()

"set nu			"Line numbers on
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
"set background=dark
syntax on

"Dara added
set vb

" toggle line numbers and fold column for easy copying:
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
nnoremap <F2> :set nornu!<CR>

"nnoremap <esc> :noh<CR><esc>
noremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" proper indentation and formatting
filetype plugin indent on

" 
autocmd FileType python set complete+=k~/.vim/syntax/python3.0.vim

syntax on

set listchars=tab:>-,eol:$,trail:.,extends:#

:set hidden

nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv

nmap <silent> ZA :wa<CR>
nmap <silent> ZS :w<CR>
nmap <silent> ZQ :qa<CR>

:nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
:nnoremap <Leader>f :Ack "\b<C-r><C-w>\b"
:nnoremap <Leader>c :%s/\<<C-r><C-w>\>//gn

match Todo /\s\+$/

set laststatus=2

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%4*\ %<%F\ %*            "full path
set statusline +=%6*%m%*                "modified flag
set statusline +=%5*%{&ff}\ %*          "file format
set statusline +=%3*%y%*                "file type
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*%P\ %*              "percent through file

hi User1 ctermfg=yellow ctermbg=black
hi User2 ctermfg=magenta ctermbg=black
hi User3 ctermfg=gray ctermbg=black
hi User4 ctermfg=white ctermbg=black
hi User5 ctermfg=lightblue ctermbg=black
hi User6 ctermfg=red ctermbg=black

set rnu " relative line numbers

set wildignore +=*/node_modules/*

set shellpipe=>

let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
let g:CommandTTraverseSCM   = "pwd"
let g:CommandTFileScanner   = "find"

colorscheme desert

let python_highlight_all = 1

"set paste
