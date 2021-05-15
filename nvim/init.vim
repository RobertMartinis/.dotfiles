
call plug#begin('/home/robert/.local/share/nvim/plugged')

"" Development tools


" Vim HardMode
" Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/takac/vim-hardtime'

" TypeScript
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
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
" Seoul256

Plug 'https://github.com/junegunn/seoul256.vim'
Plug 'dylanaraps/wal.vim'
" Gruvbox Material
  Plug 'sainnhe/gruvbox-material'
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
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


" === Current theme config ===

"" Current theme: gruvbox8



  colorscheme wal
" Oceanic-next



" colorscheme OceanicNext

" Gr    
" let g:gruvbox_contrast_dark = 'medium' 
"   colorscheme gruvbox  
" Ayu
" let ayucolor="mirage"
 " colorscheme ayu
   " set termguicolors

" Make it transparent
"highlight! Normal ctermbg=NONE guibg=NONE
"highlight! EndOfBuffer ctermbg=NONE guibg=NONE
let g:gruvbox_material_background = 'medium' 

" set termguicolors
set background=dark
"    colorscheme gruvbox-material

" === General settings = 
let mapleader = " " 
set sw=4
map <leader>qq :q <CR>
map <leader>s :w <CR>
map <leader>n :GFiles<CR>
map <leader>qw :bw<CR>

" imap jj <Esc>
" Transparency
:function MakeTransparent()
	:hi Normal ctermbg=NONE guibg=NONE 
	:hi EndOfBuffer ctermbg=NONE guibg=NONE 
:endfunction 

set relativenumber
set smartindent
set autoindent

" === Git Fugutive ===


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
