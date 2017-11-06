"let g:pathogen_disabled = ['vim-tmux-navigator']
execute pathogen#infect()
filetype plugin indent on
syntax on
set relativenumber
set number 
set tabstop=4 shiftwidth=4 expandtab
autocmd Filetype html setlocal smartindent
set softtabstop=4
autocmd FileType c,cpp,java,php,python autocmd BufWritePre <buffer> %s/\s\+$//e

autocmd FileType python call system('tmux resize-pane -x 84')

"Map pydocstring to <C-m>
nmap <silent> <C-m> <Plug>(pydocstring)

let g:pydoc_cmd = 'python -m pydoc' 

"Slimux configs
map <Leader>l :SlimuxREPLSendLine<CR>
vmap <Leader>l :SlimuxREPLSendSelection<CR>`>
map <Leader>d :SlimuxREPLSendLine<CR>j
vmap <Leader>d :SlimuxREPLSendSelection<CR>`>j
map <Leader>a :SlimuxShellLast<CR>
map <Leader>s :SlimuxShellPrompt<CR>
map <Leader>c :SlimuxSendKeysPrompt<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"vim-unstack shortcut
let g:unstack_mapkey='<Leader>t'

"Syntasic Configs
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_yaml_checkers = ['yamllint']


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

" Set remote for :Gbrowse
let g:github_enterprise_urls = ['https://github.mv.usa.alcatel.com']

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

colorscheme delek
