set exrc
set secure
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set encoding=utf-8
set t_Co=256
syntax on
colo pablo

set fileencoding=utf-8

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" c-scope
source ~/.vim/plugins/cscope_maps.vim

set nocompatible				" be iMproved, required
filetype plugin indent on		" required
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
"{{ Configuring NerdTree
Plug 'scrooloose/nerdtree'
   
  " ---> to hide unwanted files <---
  let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
" ---> show hidden files <---
  let NERDTreeShowHidden=1
" ---> autostart nerd-tree when you start vim <---
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
" ---> toggling nerd-tree using Ctrl-N <---
  map <C-n> :NERDTreeToggle<CR>
"}}
"
"{{ Configuring CtrlP
Plug 'ctrlpvim/ctrlp.vim'
"}}
"
"{{ Git integration
" ---> git commands within vim <---
Plug 'tpope/vim-fugitive'
" ---> git changes on the gutter <---
Plug 'airblade/vim-gitgutter'
" ---> nerdtree git changes <---
Plug 'Xuyuanp/nerdtree-git-plugin'
"}}
"
"{{ Autopairs
" ---> closing XML tags <---
Plug 'alvan/vim-closetag'
" ---> files on which to activate tags auto-closing <---
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.phtml,*.js,*.jsx,*.coffee,*.erb'
" ---> closing braces and brackets <---
Plug 'jiangmiao/auto-pairs'
"}}
"
"{{ TMux - Vim integration
Plug 'christoomey/vim-tmux-navigator'
"}}
"
"{{ Configuring YouCompleteMe
Plug 'valloric/youcompleteme', { 'do': './install.py' }
  
  " ---> youcompleteme configuration <---
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
  
  " ---> compatibility with another plugin (ultisnips) <---
  let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ] 
  let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
  let g:SuperTabDefaultCompletionType = '<C-n>'
" ---> disable preview window <---
  set completeopt-=preview
" ---> navigating to the definition of a a symbol <---
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}}
"
"{{ Color-scheme
Plug 'morhetz/gruvbox'
  set background=dark
  let g:gruvbox_contrast_dark='default'
"}}
"
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

" Terraform plugin
Plug 'https://github.com/hashivim/vim-terraform.git'
"
" Puppet plugin
Plug 'https://github.com/rodjek/vim-puppet.git'
"
"{{ Golang plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  let g:go_fmt_command = "goimports" 
  let g:go_auto_type_info = 1
"}}
"
"{{ air-line
Plug 'vim-airline/vim-airline'
	let g:airline_powerline_fonts = 1

	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif

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
"}}

" Ruby plugin
Plug 'vim-ruby/vim-ruby'

" Groovy plugin
Plug 'vim-scripts/groovy.vim'

call plug#end()

" colorscheme gruvbox

nnoremap <s-tab> za

nmap Q q

nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>
