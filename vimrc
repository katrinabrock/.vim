"let g:pathogen_disabled = ['vim-tmux-navigator']
execute pathogen#infect()
filetype plugin indent on
syntax on
set relativenumber
set number 

set softtabstop=4 tabstop=4 shiftwidth=4 expandtab
autocmd Filetype yaml,groovy set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
autocmd BufNewFile,BufRead *.html.j2 set syntax=html
autocmd Filetype html setlocal smartindent
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> %s/\s\+$//e

"Map pydocstring to <C-m>
nmap <silent> <C-m> <Plug>(pydocstring)

let g:pydoc_cmd = 'python -m pydoc' 

let g:slime_target = "tmux"

"vim-unstack shortcut
let g:unstack_mapkey='<Leader>t'

"Syntasic Configs
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_python_checkers=['pylint']
let g:syntastic_puppet_checkers=['puppetlint']
"let g:syntastic_r_checkers=['lintr']
"let g:syntastic_enable_r_lintr_checker = 1
"let g:syntastic_python_flake8_args='--ignore=E501,W503'


"Fix vim.csv highlighting
hi link CSVColumnOdd MoreMsg
hi link CSVColumnEven Question

"vim-airline configs
"Supports buffers as tabs
let g:airline#extensions#tabline#enabled = 1
set hidden
" Move to the next buffer
nmap gl :bnext<CR>
" Move to the previous buffer
nmap gh :bprevious<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

colorscheme dracula

" :W -> :w
cnoreabbrev W w
