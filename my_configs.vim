
"Set Mapleader
let mapleader = ","
let g:mapleader = ","
let g:indent_guides_guide_size=1

"Turn filetype plugin on
filetype on
filetype plugin on

set autoread

"Fast saving
nmap <leader>w :w!<cr>

"Search Dictionary
nmap <leader>d :call SearchWord()<CR>

"SelectBuf
nmap <unique> <silent> <S-L> <Plug>SelectBuf

"Remove the Windows ^M
map <Leader>m mz:%s/\r$//g<cr>`z

"Remove trailing whilespace
map <Leader>s :%s/\s\+$//e

"Nerd Tree commands and options
map <Leader>, :NERDTreeToggle<cr>
map <Leader>t :TlistToggle<cr>
map <Leader>b :TagbarToggle<cr>

"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


set mouse=n

set cursorline

"Other Options
set splitright
set wildmode=longest,list,full
set wildmenu
"set nobackup
set directory=~/.swpdir
set backupdir=~/.backdir
set nocompatible
set ruler
set number
set nuw=4
set vb
set binary noeol
set backspace=indent,eol,start
set showmode
set showmatch
"set ignorecase
"set smartindent
set modelines=3
set modeline
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set fileformats=unix,dos,mac " support all three, in this order
set fileencoding=utf8

syntax on

" indentation rules for FFmpeg: 4 spaces, no tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
retab
"set noexpandtab
set cindent
set cinoptions=(0
" allow tabs in Makefiles
" autocmd FileType make setlocal noexpandtab shiftwidth=4 softtabstop=4
autocmd FileType make setlocal noexpandtab shiftwidth=4
" Trailing whitespace and tabs are forbidden, so highlight them.
" highlight ForbiddenWhitespace ctermbg=red guibg=red
" match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
" autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/
"autocmd FileType c,cpp,python,ruby,java autocmd BufWritePre <buffer> :%s/\s\+$//e

" Markdown file
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

au BufReadPost svn-commit.tmp  silent! exe '0read  ~/.commit.template'

ab teh the
ab fro for

set incsearch
set smartcase

"Map hlsearch
nmap <Leader>hl :set hlsearch!<BAR>set hlsearch?<CR>
" turn off highlight search automatically
nnoremap <silent> <CR> :nohl<CR><CR>


"Tab maps
map t1 1gt
map t2 2gt
map t3 3gt
map t4 4gt
map t5 5gt
map t6 6gt
map t7 7gt
map t8 8gt
map t9 9gt