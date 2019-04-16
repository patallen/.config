" <leader> <space> to search files
nnoremap <silent> <leader><space> :Files<CR>

" <leader> <space> to search text
nnoremap <silent> <leader>. :Rg<CR>

" <leader> Enter to de-highlight text
nnoremap <silent> <leader><CR> :noh<CR>

" ctrl+n to toggle NERDTree file explorer
nnoremap <C-n> :NERDTreeToggle<CR>

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
    else
	set relativenumber
    endif
endfunc

" (<leader> nt) to toggle relativenumber
nnoremap <leader>nt :call NumberToggle()<cr>


" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
