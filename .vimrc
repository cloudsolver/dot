" https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
" https://github.com/cloudsolver/dot-files.git
" Pathogen needs to be one the top
execute pathogen#infect()
" Indentation on
filetype plugin indent on
" syntax highlight
syntax on
" Various indentation settings
:set autoindent
:set tabstop=4
:set shiftwidth=2
:set smartindent

"-----------Line Numbers-------------
:set number
:set relativenumber

"========== Keyboard magic============
" add a space in normal mode
:nnoremap <space> i<space><esc>
" a space then paste
let @p='i ^[p'

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
call pathogen#helptags()
" Start with NerdTree, Open in tabs, sub-folder fix
autocmd VimEnter * NERDTree
"let NERDTreeMapOpenInTab='<ENTER>'
"let g:NERDTreeeDirArrows=0
"let NERDTreeShowHidden=1
"let NERDTreeMinimalUI=1
"let NERDTreeDirArrows=1
