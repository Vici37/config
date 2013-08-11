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
	let fortran_free_source=1
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

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
call pathogen#infect()

" Bundles
Bundle 'gmarik/vundle'
"Bundle 'Valloric/YouCompleteMe'

:filetype plugin on
let g:snips_trigger_key = '<C-b>'

filetype plugin indent on

compiler ruby

set tabstop=2 	"Set tab spac
set sts=2
set ai
set et
set number			"show line numer set nonumber to remove
set autoindent	"indent at the same level of previous line
set shiftwidth=2	"indents of 2 spaces
set incsearch		"find as you type in search
set hlsearch		"highlight search results
set ignorecase	"ignore cases in search
set showmatch		"matching {[(
set smartcase		"smart case matching
set nocompatible

set undodir=~/.vim/undos//
set undofile
set undolevels =1000
set undoreload =10000

au BufWritePre * :call <SID>StripTrailingWhitespaces()

"let ; work like :
nmap ; :
"let j and k move down/up next row, not next line
"nnoremap j gj
"nnoremap k gk
"vnoremap j gj
"vnoremap k gk
"fix shift hold key fixes
cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap :nrdt NERDTree
nmap <silent> <C-n> :silent noh<CR>
nmap <silent> <C-c> gg=G''<CR>:%s/\n\s*{/ {/g<CR>''<CR>
nmap <silent> <F1> :RainbowParenthesesToggleAll<CR>
nmap <silent> <F2> :call TogglePaste()<CR>
nmap <silent> <F3> :!ctags<CR>

ab vecd vector<double>
ab vecc vector<char>
ab veci vector<int>
ab vecb vector<bool>
ab vecl vector<long>
ab tso tsornson

colo wombat
set foldmethod=syntax
set foldlevelstart=20
set wildmode=longest,list,full

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

set noswapfile
set nobackup

nmap <silent> <C-l> :tabn<CR>
"nmap <silent> <C-h> :tabp<CR>
nmap n nzz
nmap N Nzz

set scrolloff=1000

set laststatus=2
set statusline=%t%h%m%r\ %{StatuslineLongLineWarning()}%=%l\ /\ %L,\ %c\ %P

"let g:loaded_acp = 1

autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

function! CleanFile()

endfunction

function! TogglePaste()
	if &paste
		set nopaste
	else
		set paste
	end
endfunction

function! StatuslineLongLineWarning()
	if !exists("b:statusline_long_line_warning")
		let long_line_lens = s:LongLines()
		if len(long_line_lens) > 0
			let b:statusline_long_line_warning = "[" .
						\ '#' . len(long_line_lens) .
						\ '>' . (&tw ? &tw : 80) . "," .
						\ 'm' . s:LongestLine() . "," .
						\ '$' . max(long_line_lens) . "]"
		else
			let b:statusline_long_line_warning = ""
		endif
	endif
	return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
	let threshold = (&tw ? &tw : 80)
	let spaces = repeat(" ", &ts)

	let long_line_lens = []

	let i = 1
	while i <= line("$")
		let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
		if len > threshold
			call add(long_line_lens, len)
		endif
		let i += 1
	endwhile

	return long_line_lens
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongestLine()
	let threshold = (&tw ? &tw : 80)
	let spaces = repeat(" ", &ts)

	let longest_line = 1
	let max = 0

	let i = 1
	while i <= line("$")
		let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
		if len > max
			let longest_line = i
			let max = len
		endif
		let i += 1
	endwhile

	return longest_line
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
	let nums = sort(a:nums)
	let l = len(nums)

	if l % 2 == 1
		let i = (l-1) / 2
		return nums[i]
	else
		return (nums[l/2] + nums[(l/2)-1]) / 2
	endif
endfunction

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
