call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
"" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"" On-demand loading
"Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
"
"" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
Plug 'vimwiki/vimwiki'
Plug 'mhartington/oceanic-next' "oceanic colorscheme
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " search
Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/hiPairs'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
let g:ale_go_bingo_executable = 'gopls'
let g:ale_completion_enabled = 0
let g:ale_linters = { 'go': ['gofmt', 'golint', 'go vet', 'gopls'] }

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

let g:vimwiki_list = [{'path': '~/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"nerdcommenter
vmap <C-/> <plug>NERDCommenterToggle
nmap <C-/> <plug>NERDCommenterToggle

let g:hiPairs_hl_matchPair = { 'term'    : 'underline,bold',
                \              'cterm'   : 'bold',
                \              'ctermfg' : '0',
                \              'ctermbg' : '180',
                \              'gui'     : 'bold',
                \              'guifg'   : '#ffcb47',
                \              'guibg'   : '#373f42' }
                "\              'guibg'   : '#d9d8d7' }

" disable default highlight of braces 
let g:loaded_matchparen=1
"not work
"highlight MatchParen term=underline cterm=underline gui=underline
"syn match Foo /([^(]*\%#.*)/
"hi link Foo Underlined
" highlight vars
" https://stackoverflow.com/questions/1551231/highlight-variable-under-cursor-in-vim-like-in-netbeans
" colors cmd:  so $VIMRUNTIME/syntax/hitest.vim
:autocmd CursorMoved * exe printf('match CursorLine /\V\<%s\>/', escape(expand('<cword>'), '/\'))

:autocmd InsertLeave * silent! update 
set guicursor=a:blinkwait1-blinkon1-blinkoff1

"bracket completion
inoremap {<CR> <space>{<CR>}<Esc>O
""inoremap " ""<Esc>i
""inoremap [ []<Esc>i
"inoremap ( (<C-o>$)<Esc>i


set number
" colorscheme pencil " for C
nmap <C-n> :tabnext<CR>
nmap <C-p> :tabprev<CR>
"
" imap <silent> <C-n> <esc><C-n>
" imap <silent> <C-p> <esc><C-p>
"To create a new tab
" nnoremap <C-q> :wqall<CR>
nnoremap t :tabnew<Space>
nmap <C-c> :tabnew<Space>.<CR>
nmap <C-q> :wqall<CR>

nmap <C-e> :w<CR>
nmap <C-j> :e<Space>.<CR>

nmap <C-m> <C-w>v
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-m> <C-w>v
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

inoremap jk <ESC>
syntax on

set background=dark
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set noexpandtab
"color settings
set t_Co=256
if &term =~# '^screen' " :h xterm-true-colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum,
endif

if (has("termguicolors"))
set termguicolors
endif
let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
let g:airline_theme = 'oceanicnext'
colorscheme OceanicNext

"nerdtree
map <Tab> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=50

