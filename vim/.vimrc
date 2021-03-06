set autoindent
set smartindent

set expandtab
set shiftwidth=4
set modeline

set bg=dark

set nowrap
set nu
set laststatus=2

set hlsearch
set ignorecase
set incsearch

"Use z-a and z-A to toggle contextual and global indent respectively
"se foldmethod=indent

"Use ctrl-x ctrl-k to auto-complete using dictionary
"set dictionary=/usr/share/dict/words

"Window resizing
map <F3> <C-w>-
map <F4> <C-w>+
map <F5> <C-w><
map <F6> <C-w>>

" Use with solarized dark terminal theme
colorscheme slate

"http://vim.wikia.com/wiki/Highlight_current_line
":hi CursorLine   term=reverse ctermbg=0 guibg=Grey40
":hi CursorColumn term=reverse ctermbg=0 guibg=Grey40
:hi CursorLine   cterm=NONE ctermbg=grey ctermfg=red guibg=0 guifg=grey
:hi CursorColumn cterm=NONE ctermbg=grey ctermfg=red guibg=0 guifg=grey

"Toggle crosshair
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"Toggle copy mode
:nnoremap <Leader>p :set paste!<CR>

"Toggle numbers
:nnoremap <Leader>n :set nu!<CR>

"Toggle wrap
:nnoremap <Leader>w :set wrap!<CR>

execute pathogen#infect()

"https://github.com/fatih/vim-go/issues/282
"Enable filetype plugins
filetype plugin on

"https://stackoverflow.com/questions/30658473/open-vim-with-default-code
function SetPy()
    let ftype = &ft | execute 'silent! 1s:.*:#!/usr/bin/env ' . ftype
    if line("$") == 1
        call append(1, "# vim:filetype=python:expandtab:tabstop=4:shiftwidth=4:")
    endif
endfunction

autocmd BufNewFile *.py call SetPy()

"pep8 formatting
"https://stackoverflow.com/questions/15285032/autopep8-with-vim
autocmd FileType python setlocal formatprg=autopep8\ -
map <F8> gggqG


"function SetPythonOpts()
"  set shiftwidth=4
"endfunction
"
"function SetGroovyOpts()
"  set shiftwidth=2
"  set syntax=groovy
"endfunction
"
"function SetJavaOpts()
"  set shiftwidth=3
"  set syntax=java
"endfunction
"
"function SetCppOpts()
"  set shiftwidth=3
"  set syntax=java
"endfunction
"
"function SetYamlOpts()
"  set shiftwidth=2
"  set syntax=yaml
"endfunction
"
"autocmd BufNewFile,BufRead *.py call SetPythonOpts()
"autocmd BufNewFile,BufRead *.groovy call SetGroovyOpts()
"autocmd BufNewFile,BufRead *.gradle call SetGroovyOpts()
"autocmd BufNewFile,BufRead *.java call SetJavaOpts()
"autocmd BufNewFile,BufRead *.cpp,*.c call SetCppOpts()
"autocmd BufNewFile,BufRead *.yml,*.yaml call SetYamlOpts()
