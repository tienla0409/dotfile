call plug#begin('~/.config/nvim/bundle')

" themes
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'pangloss/vim-javascript'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
Plug 'pseewald/vim-anyfold'
Plug 'Yggdroot/indentLine'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'voldikss/vim-floaterm'
Plug 'puremourning/vimspector'

" search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
call plug#end()
