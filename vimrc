" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

:filetype plugin on

set tabstop=2 	"Set tab spac
set number			"show line numer set nonumber to remove
set autoindent	"indent at the same level of previous line
set shiftwidth=2	"indents of 2 spaces
set incsearch		"find as you type in search
set hlsearch		"highlight search results
set ignorecase	"ignore cases in search
set showmatch		"matching {[(
set smartcase		"smart case matching
"let ; work like :
nnoremap ; :		
"let j and k move down/up next row, not next line
nnoremap j gj
nnoremap k gk
"fix shift hold key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q

ab vecd vector<double>
ab vecc vector<char>
ab veci vector<int>
ab vecb vector<bool>
ab vecl vector<long>
ab tso tsornson
