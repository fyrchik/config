" Tab settings
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set number

set rtp+=~/.vim

" Enable TRUE COLOR support
set termguicolors
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme evening

" Tell (neo)Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
"if &listchars ==# 'eol:$'
"  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
"endif

" Highlight trailing whitespaces
augroup highlighting
    autocmd BufRead * highlight ExtraWhitespace ctermbg=red guibg=#ff9a13
    autocmd BufRead * match ExtraWhitespace /\s\+$/
augroup END
