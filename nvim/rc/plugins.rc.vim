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

call plug#end()

exec 'source' . expand('~/.config/nvim/rc/plugins/black.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/deoplete.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/hardtime.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/jedi.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/neoformat.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/neomake.rc.vim')
exec 'source' . expand('~/.config/nvim/rc/plugins/rust.rc.vim')
