"				g0t r00t ?
"=============================================================================
"                  https://github.com/rootemanuel
"=============================================================================
syntax on

colorscheme dracula
"colorscheme molokai
"colorscheme gruvbox
"colorscheme onedark


"=============================================================================
"                  Configs, number par, show ({[ complete
"=============================================================================
hi CursorLine cterm=underline gui=underline
set encoding=utf-8
set fileencoding=utf-8
set hls
set number
set showmatch
set cursorline

"=============================================================================
"                  Plugins
"=============================================================================
call plug#begin()

Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'majutsushi/tagbar'
Plug 'dracula/vim', { 'as': 'dracula' }

"Themes
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'dracula/vim'

call plug#end()


autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
" ts - show existing tab with 4 spaces width
" sw - when indenting with '>', use 4 spaces width
" sts - control <tab> and <bs> keys to match tabstop

" Control all other files
set shiftwidth=4

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

filetype plugin indent on

" Allow backspace to delete indentation and inserted text
" i.e. how it works in most programs
set backspace=indent,eol,start
" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"        stop once at the start of insert.


" go-vim plugin specific commands
" Also run `goimports` on your current file on every save
" Might be be slow on large codebases, if so, just comment it out
let g:go_fmt_command = "goimports"

" Status line types/signatures.
let g:go_auto_type_info = 1

"au filetype go inoremap <buffer> . .<C-x><C-o>

" If you want to disable gofmt on save
" let g:go_fmt_autosave = 0


" NERDTree plugin specific commands
:nnoremap <C-g> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree


" air-line plugin specific commands
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


"=============================================================================
"                  Nmap`s
"=============================================================================

nmap <F2> :NERDTree<CR>
nmap <F3> :TagbarToggle<CR>

"=============================================================================
"                  Declare
"=============================================================================

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"ctags tagbar
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags' 
let g:tagbar_width=60
