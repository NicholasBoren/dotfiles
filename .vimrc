let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set wildmenu
set showcmd
set wrap
syntax enable
set number
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set sidescrolloff=5
set cursorline
set expandtab

call plug#begin()
	Plug 'lervag/vimtex', {'tag': 'v1.6'}
		let g:tex_flavor='latex'
		let g:vimtex_view_method='skim'
		let g:vimtex_quickfix_mode=0
		set conceallevel=1
		let g:tex_conceal='abdmg'
		hi Conceal ctermbg=none

	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
		let g:UltiSnipsExpandTrigger = '<tab>'
		let g:UltiSnipsJumpForwardTrigger = '<tab>'
		let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

	Plug 'dylanaraps/wal'
		set background=dark

call plug#end()

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
