" set nocp

" Leader is ,
let mapleader = ','

" Enable 256-color mode. Required on Git Bash for Windows
" https://github.com/vim-airline/vim-airline/issues/26
set t_Co=256

" Override default vim runtime path (it's different on Windows)
if has('win32') || has('win64')
   set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" Setup Pathogen (Plugin stuff)
execute pathogen#infect()

" Enable syntax highlighting, filetype detection, line numbers
syntax on
filetype plugin indent on
set number

" Airline Statusbar Stuff
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1

" Enable mouse stuff
set mouse=a

" Enable Incremental Search
set incsearch

" Remap ii to escape
imap ii <C-[>
cmap ii <C-[>

" == NERDTree Stuff ==
" On startup, show NERDTree
autocmd vimenter * NERDTree

" Show hidden files in nerdtree
let NERDTreeShowHidden=1

" Hide cursorline as it's buggy on Windows
let NERDTreeHighlightCursorline=0

" Conemu Msys Connector dislikes arrow char
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Custom Commands
" Bind Alt + Shift + L to locating current file in nerdtree
map L :NERDTreeFind<cr>

" Bind Ctrl + O to toggling nerdtree
" map <C-o> :NERDTreeToggle %<CR>

" Bind Alt + Shift + [ and Alt + Shift + ] to prev/next buffers.
map { :bp<CR>
map } :bn<CR>

" Bind leader + q to close current buffer (tablike).
" Tiny hack to make nerdtree update its buffer listing.
nnoremap <leader>q :bp<cr>:bd #<cr>:NERDTreeToggle %<cr>:NERDTreeToggle %<cr>

" We're cool with backspacing newlines
set backspace=indent,eol,start

" Set hidden allows switching buffers when unsaved
set hidden

" == GOLANG Stuff ==
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  

" == CPP Stuff ==
au FileType cpp setlocal sw=4 softtabstop=4 expandtab

" backspace can do newlines
set backspace=indent,eol,start

" del prev LF in normal mode with X
set whichwrap+=<,>,h,l,[,]

