" Turn on syntax highlighting
syntax on

" Turn on line numbers
set number 

" Turn on cursor position
set ruler

" Set line width and wrap
set wrap

" Allow mouse selection in all modes
set mouse=a

" Apply auto indentation
set autoindent
set smartindent

" Modify indentation
function! SetTab()
	if &filetype == "html"
		setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
	else
		setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
	endif
endfunction		
autocmd! BufReadPost,BufNewFile * call SetTab()

" Set syntax-based folding
" zo Open fold
" zc Close fold
" zR Remove folds
set foldmethod=syntax
