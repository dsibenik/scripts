set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

syntax on           " Coloring for coding

set noet sts=0 sw=4 ts=4  " Smart tabs (lining words with past row)
set cindent
set cinoptions=(0,u0,U0
set number
highlight LineNr ctermfg=grey
