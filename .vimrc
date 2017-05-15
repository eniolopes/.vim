set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

"Setup
syntax on
filetype plugin indent on
set ts=2 sts=2 sw=2 expandtab autoindent
set hlsearch
set nowrap
set visualbell t_vb=
set scrolloff=3
set nofoldenable
set wildmode=list:longest
set wildignore=*.o,*.obj,*.swp,*~,#*#,tmp/,node_modules/
set list
set listchars=tab:\ ¬,trail:.
set mouse=a
set hidden
set switchbuf=useopen
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ttyfast
set lazyredraw
set undofile
set number
set background=dark
set clipboard=unnamed
set laststatus=2

"Custom Bindings
:let mapleader=","

"Close current buffer
map <leader>q :bd<cr>

"Copy to Clipboard
:vmap <leader>y "*y
:vmap <leader>p "*p
"Clear the search buffer
:nnoremap <CR> :nohlsearch<cr>

"Switch to alternate file
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

"Clist navigation
map ]q :cnext<cr>
map [q :cprevious<cr>

"Syntax Highlight
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.stache set filetype=html

"Color Scheme
colorscheme seoul256-light

"NERDTree
map <leader>n :NERDTree<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Closes vim when only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"ctrlp
let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|node_modules|_build|deps$'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:javascript_plugin_jsdoc = 1

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

"jsx syntax on js files
let g:jsx_ext_required = 0
