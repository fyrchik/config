" Tab settings
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set number

set rtp+=~/.config/nvim

" Yank into clipboard
set clipboard+=unnamedplus

" Enable TRUE COLOR support
set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme evening

" Tell (neo)Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
"if &listchars ==# 'eol:$'
"  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"endif

call plug#begin('~/.vim/plugged')

" blame inside nvim + automatic ctags generation so cool!
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-vinegar.git'
"Plug 'https://github.com/scrooloose/nerdtree.git'
"Plug 'https://github.com/scrooloose/nerdcommenter.git'

call plug#end()

" surround line with first arg
"function! s:Surr(c)
"    exe 's/\%V\(.*\)\%V/' . a:c . '\1' . a:c . '/'
"endfunction

command! -nargs=1 WrapSelection call s:Surr(<f-args>)

" wanna give this a try
" http://www.linusakesson.net/programming/syntaxhighlighting/index.php
" syntax off

" Highlight trailing whitespaces
augroup highlighting
    autocmd BufRead * highlight ExtraWhitespace ctermbg=red guibg=#ff9a13
    autocmd BufRead * match ExtraWhitespace /\s\+$/
augroup END
