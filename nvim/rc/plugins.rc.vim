call plug#begin('~/.local/share/nvim/plugged')
" FZF
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Syntax / Lint / Build
Plug 'Shougo/deoplete.nvim'
Plug 'neomake/neomake'
Plug 'jiangmiao/auto-pairs'
Plug 'sbdchd/neoformat'

" Toml
Plug 'cespare/vim-toml'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

" Vim Meta
Plug 'takac/vim-hardtime'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'takac/vim-hardtime'
Plug 'scrooloose/nerdtree'

" Python
Plug 'Shougo/neocomplete.vim'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'ambv/black'

" Mutt config highlighting
Plug 'vim-scripts/muttrc.vim'
Plug 'Shougo/neco-vim'

call plug#end()

let plugin_paths = [ 	  'plugins/black',
			\ 'plugins/fzf',
			\ 'plugins/deoplete',
			\ 'plugins/hardtime',
			\ 'plugins/jedi',
			\ 'plugins/neoformat',
			\ 'plugins/neomake',
			\ 'plugins/rust',
			\ 'plugins/black',
			\ 'plugins/deoplete',
			\ 'plugins/hardtime',
			\ 'plugins/jedi',
			\ 'plugins/neoformat',
			\ 'plugins/neomake',
			\ 'plugins/rust',
			\ ]

for plugin in plugin_paths
    call SmartSourceRc(plugin)
endfor
