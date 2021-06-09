call plug#begin()
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" REQUIRED: Add a syntax file. YATS is the best
	Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

" Plugin settings
