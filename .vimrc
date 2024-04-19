call plug#begin('~/.vim/plugged')

Plug 'https://github.com/rhysd/vim-clang-format'
" Plug 'https://github.com/ycm-core/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': 'python3 install.py --clang-completer' }
if v:version >= 800
    Plug 'https://github.com/dense-analysis/ale.git', { 'tag': 'v2.6.0' }
endif

Plug 'https://github.com/lyuts/vim-rtags'

Plug 'https://github.com/junegunn/fzf', { 'tag': '0.20.0', 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'https://github.com/junegunn/fzf.vim'

Plug 'https://github.com/tpope/vim-fugitive', { 'tag': 'v3.2' }

call plug#end()

filetype plugin on

set encoding=utf-8

if &rtp =~ 'plugged/vim-clang-format'
    let g:clang_format#detect_style_file = 1
    let g:clang_format#auto_format = 1
    " Uncomment the line below if using a virtual development workstation. An environment variable called MONGO_REPO has
    " to be defined for this to work. Additionally, $MONGO_REPO/build/clang-format has to be linked to the clang-format
    " binary.
    " let g:clang_format#command = $MONGO_REPO.'/build/clang-format'
endif

if &rtp =~'plugged/ale' && v:version >= 800
    let g:ale_linters_explicit = 1
    " Uncomment the lines below if using a virtual development workstation. An environment variable called MONGO_REPO
    " has to be defined for this to work.
    " let g:ale_linters = {'javascript' : ['eslint'] }
    " let g:ale_javascript_eslint_executable = $MONGO_REPO.'/build/eslint'
endif

if &rtp =~'plugged/vim-rtags'
    " Uncomment the lines below if using a virtual development workstation.
    " let g:rtagsAutoLaunchRdm = 1
endif

if exists('g:vscode')
	" NeoVim Ui Modifier (VSCode plugin)
	" THEME CHANGER
	"
	function! SetCursorLineNrColorInsert(mode)
	    " Insert mode: blue
	    if a:mode == "i"
		call VSCodeNotify('nvim-theme.insert')

	    " Replace mode: red
	    elseif a:mode == "r"
		call VSCodeNotify('nvim-theme.replace')
	    endif
	endfunction


	function! SetCursorLineNrColorVisual()
	    set updatetime=0
	    call VSCodeNotify('nvim-theme.visual')
	endfunction

	vnoremap <silent> <expr> <SID>SetCursorLineNrColorVisual SetCursorLineNrColorVisual()
	nnoremap <silent> <script> v v<SID>SetCursorLineNrColorVisual
	nnoremap <slient> <script> V V<SID>SetCursorLineNrColorVisual
	nnoremap <silent> <script> <C-v> <C-v><SID>SetCursorLineNrColorVisual

	function! SetCursorLineNrColorVisual()
	    set updatetime=0
	    call VSCodeNotify('nvim-theme.visual')
	endfunction

	vnoremap <silent> <expr> <SID>SetCursorLineNrColorVisual SetCursorLineNrColorVisual()
	nnoremap <silent> <script> v v<SID>SetCursorLineNrColorVisual
	nnoremap <silent> <script> V V<SID>SetCursorLineNrColorVisual
	nnoremap <silent> <script> <C-v> <C-v><SID>SetCursorLineNrColorVisual


	augroup CursorLineNrColorSwap
	    autocmd!
	    autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
	    autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
	    autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
	augroup END
	" END NeoVim Ui Modifier
endif

""" Display settings
" Disable wrap to beginning/end of file during search
set nowrapscan
set number

""" Editing settings
set ignorecase
set smartcase

""" Buffer settings
" Allow switching buffers without saving
set hidden

""" Search settings
" Find within a visual region
vnoremap <leader>f :/\%V

autocmd FileType yml setlocal shiftwidth=2 tabstop=2

