function! s:smart_source_rc(name)
    call s:source_rc(a:name . '.rc.vim')
    call s:source_rc(a:name . '.local.rc.vim')
endfunction

let autoload_dir = expand('~/.config/nvim/autoload/')

" Automatically check for and install vim-plug
let autoload_plug_path = autoload_dir . 'plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
      \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path


function! s:source_rc(path)
  let l:f_path = fnameescape(expand('~/.config/nvim/rc/' . a:path))
  if filereadable(l:f_path)
      execute 'source' . l:f_path
  endif
endfunction


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
    call s:smart_source_rc(name)
endfor
