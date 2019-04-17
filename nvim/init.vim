runtime functions.vim

let autoload_dir = expand('~/.config/nvim/autoload/')

" Automatically check for and install vim-plug
let autoload_plug_path = autoload_dir . 'plug.vim'
if !filereadable(autoload_plug_path)
    silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    augroup plug
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    augroup END
endif
unlet autoload_plug_path



if !isdirectory(autoload_dir)
    call mkdir(autoload_dir)
endif


let rc_filenames = [ 'init', 
		   \ 'plugins', 
		   \ 'editing', 
		   \ 'keymap',
		   \ 'ui',
 		   \ ]

for name in rc_filenames
    call SmartSourceRc(name)
endfor
