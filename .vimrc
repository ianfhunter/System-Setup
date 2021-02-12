set autoindent	" Pressing enter after line, automatically choose position 
set ruler	" Cursor position at corner
set number	" Line Numbers
set hlsearch	" Highlight search results
set cursorline	" Highlight current line
set tabstop=4	" Visual Spaces per TAB
set softtabstop=4 	" Visual Spaces per TAB (when editing)
set expandtab	" Use Spaces instead of tabs
filetype indent on	" load indent files for specific filetypes.
set wildmenu	" Autocomplete commands

set showmatch	" Hilight Matching braces

packadd! matchit    " Matches HTML Tags with %

"Protobuf Files
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
    au! BufRead,BufNewFile *.pb setfiletype proto
augroup end

:command StripTrailing :%s/\s+$//e  " Strip trailing whitespace

set foldenable  " Enable folding
set foldlevelstart=10   " Collapse only severely nested code
nnoremap <space> za     " Space key will fold and unfold code
set foldmethod=indent 



