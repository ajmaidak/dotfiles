" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'

call plug#end()


" Colors & theming
set termguicolors
colorscheme gruvbox
set background=light   " Setting light mode
let g:gruvbox_contrast_light = 'soft'

" Search
set hlsearch " highlight all search results

" Disable mouse integrations
set mouse=

" Ruby stuff: Thanks Ben :)
" ================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,markdown set ai sw=2 sts=2 et
augroup END
" ================
"
" MySQL
" =====
if has("autocmd")
        autocmd BufRead *.sql set filetype=mysql
        autocmd BufRead *.test set filetype=mysql
endif

" Go Stuff
" call the metalinter on shutdown
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:deoplete#enable_at_startup = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_diagnostics_enabled = 1
let g:go_highlight_diagnostic_warnings = 0
let g:go_version_warning = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = "goimports"
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
