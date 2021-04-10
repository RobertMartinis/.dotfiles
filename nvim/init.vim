""" ===Plugins===
call plug#begin('/home/robert/.local/share/nvim/plugged')

"" Development tools


" Vim HardMode

Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/takac/vim-hardtime'
" Vim Fugutive
Plug 'https://github.com/tpope/vim-fugitive'
" Nerd Tree
Plug 'https://github.com/preservim/nerdtree'
" Tagbar
Plug 'https://github.com/preservim/tagbar'
" YouCompleteMe
" Plug 'https://github.com/ycm-core/YouCompleteMe' " Requires python
" LSP Config
"Plug 'neovim/nvim-lspconfig' " Prefer COC
" Fuzzy-finder Ctrl-P
Plug 'https://github.com/kien/ctrlp.vim'
" Emmet
Plug 'https://github.com/mattn/emmet-vim'
" Ale
Plug 'dense-analysis/ale'
" Cock 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Vim-javascript
Plug 'https://github.com/pangloss/vim-javascript'
" Highlight every variable
Plug 'jaxbot/semantic-highlight.vim'
" Highlight JSX
Plug 'https://github.com/mxw/vim-jsx'
" Terminal popup
Plug 'voldikss/vim-floaterm'


"" Themes 
Plug 'dylanaraps/wal.vim'
" Solarized theme
Plug 'https://github.com/altercation/vim-colors-solarized'
" Gruvbox theme
Plug 'morhetz/gruvbox'
" Vim Airline
Plug 'vim-airline/vim-airline'
" Vim Airline Themes
Plug 'vim-airline/vim-airline-themes'
" Oceanic-next
Plug 'https://github.com/mhartington/oceanic-next'
" Ayu 
Plug 'ayu-theme/ayu-vim'
" Gruvbox8
Plug 'https://github.com/lifepillar/vim-gruvbox8'
call plug#end()


" === Current theme config ===

colorscheme wal
"" Current theme: gruvbox8

" Oceanic-next

"colorscheme OceanicNext

" Gruvbox
"let g:gruvbox_transparent_bg = '1' " Transparent bg
 "colorscheme gruvbox8

" Ayu
" set termguicolors
let ayucolor="mirage"
" colorscheme ayu

" Make it transparent
"highlight! Normal ctermbg=NONE guibg=NONE
"highlight! EndOfBuffer ctermbg=NONE guibg=NONE


" === General settings === set relativenumber " Relative line numbering 
let mapleader = ","

" Quit
map <leader>q :q <CR>

" Save
map <leader>s :w <CR>
imap jj <Esc>
" NERDTree
map <leader>n :NERDTree <CR>

" Transparency
:function MakeTransparent()
	:hi Normal ctermbg=NONE guibg=NONE 
	:hi EndOfBuffer ctermbg=NONE guibg=NONE 
:endfunction 

" Relative numbering

set relativenumber
" === Airline ===

let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1

"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" === Syntastic checker ===
" Javascript
let g:syntastic_javascript_checkers = ['closurecompiler', 'eslint']

" Floatterm

" Automatically closes floatterm on SIGINT
let g:floaterm_autoclose = 1
" Opens Floatterm
map <leader>tt : FloatermNew <CR>
" Hides Floaterm for continued use
map <leader>th :FloatermHide <CR>
" Displays Floaterm after hide
map <leader>ts :FloatermShow <CR> 


" Coc

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()




" HardTime
 let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []
