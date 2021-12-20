" call plug#begin()
" Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
" Plug 'mattn/emmet-vim'
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'shougo/neocomplete.vim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'vim-scripts/Smart-Tabs'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'jmcantrell/vim-virtualenv'
" Plug 'wikitopian/hardmode'
" Plug 'vim-scripts/indentpython.vim'
" Plug 'scrooloose/syntastic'
" Plug 'nvie/vim-flake8'
" Plug 'vim-perl/vim-perl'
" Plug 'mattn/emmet-vim'
" Plug 'shougo/denite.nvim'
" Plug 'vim-vdebug/vdebug' 
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'jwalton512/vim-blade'
" Plug 'posva/vim-vue'
" Plug 'liuchengxu/vim-which-key'
" Plug 'dense-analysis/ale'
" Plug 'SkyLeach/pudb.vim'
" Plug 'rust-lang/rust.vim'
" Plug 'jiangmiao/auto-pairs' 
" Plug 'neovim/nvim-lsp'
" Lisp
" TODO: move to plugins.lua
" Plug 'bhurlow/vim-parinfer'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'l04m33/vlime', {'rtp': 'vim/'}

" Themes
" Plug 'mhartington/oceanic-next'
" Plug 'nightsense/stellarized'
" Plug 'morhetz/gruvbox'
" Plug 'jacoborus/tender.vim'
" call plug#end()            " required
filetype plugin indent on    " required
highlight Pmenu ctermfg=Gray   
let g:neocomplete#enable_at_startup = 1
let g:virtualenv_directory = '/home/sasha/work'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
if !exists("g:vdebug_options")
  let g:vdebug_options = {}
endif
let g:vdebug_options["marker_open_tree"] = '-'
let g:vdebug_options["marker_closed_tree"] = '+'

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1

" Php/laravel stuff
autocmd BufNewFile,BufRead *.blade.php set ft=blade


" Lisp stuff
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END
let g:ycm_filetype_blacklist = { 'lisp': 1 }

augroup LocalVlimeKeys
	autocmd!
	autocmd FileType lisp imap <silent> <buffer> <tab> <c-r>=vlime#plugin#VlimeKey("tab")<cr>
	autocmd FileType lisp setlocal omnifunc=vlime#plugin#CompleteFunc
	autocmd FileType lisp setlocal indentexpr=vlime#plugin#CallCurIndend()
augroup end

augroup CustomVlimeInputBuffer
	autocmd!
	autocmd FileType vlime_input inoremap <silent> <buffer> <tab> <c-r>=vlime#plugin#VlimeKey("tab")<cr>
	autocmd FileType vlime_input setlocal omnifunc=vlime#plugin#CompleteFunc
	autocmd FileType vlime_input setlocal indentexpr=vlime#plugin#CalcCurIndent()
augroup end


" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

let g:airline_theme = 'tender'
hi Normal guibg=NONE ctermbg=NONE

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/vendor,*/.git/,*/node_modules,*/eggs



"source ~/.config/nvim/coc.vim
lua require'lisperatu.options'
lua require'plugins'
lua require'other'
