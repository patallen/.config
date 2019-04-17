" Check for changes every 4s (CursorHold).
" Reload the buffer upon detecting change.
set autoread

augroup reload
    au CursorHold * checktime  
augroup END
