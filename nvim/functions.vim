function SourceRc(path)
  let l:f_path = fnameescape(expand('~/.config/nvim/rc/' . a:path))
  if filereadable(l:f_path)
      execute 'source' . l:f_path
  endif
endfunction

function SmartSourceRc(name)
    call SourceRc(a:name . '.rc.vim')
    call SourceRc(a:name . '.local.rc.vim')
endfunction

