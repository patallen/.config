
" Check for changes every 4s (CursorHold).
" Reload the buffer upon detecting change.
set autoread
au CursorHold * checktime  
