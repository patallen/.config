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
 
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>. :AgIn 
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>
