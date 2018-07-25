" Filetype detection
"au BufNewFile,BufRead *.erb set filetype=ruby

" Different filetypes by extension
au BufNewFile,BufRead *.groovy set filetype=groovy
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

" Different tab lengths
autocmd Filetype bash set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype groovy set noexpandtab copyindent softtabstop=0 tabstop=4 shiftwidth=4
autocmd Filetype sh set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype php set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype python set expandtab softtabstop=4 tabstop=4 shiftwidth=4
autocmd Filetype yaml set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype ruby set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype puppet set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype javascript set expandtab softtabstop=4 tabstop=4 shiftwidth=4

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'useless use of a variable in void context'}
let g:syntastic_debug = 0
let g:pymode_python = 'python3'

" Indent Guides
let g:indent_guides_start_level = 1
let g:indent_guides_color_change_percent = 95
let g:indent_guides_auto_colors = 0


autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white ctermbg=gray


" Functions
command! -nargs=0 Execprog
\ | execute ':silent !%'
\ | execute :redraw!'

" Variables
set nocompatible
set bs=2
set autoindent
set number
set timeoutlen=200
set shell=zsh
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set clipboard=unnamed

" Show whitespace
set list

let mapleader=","
" Color syntax
color molokai
syntax on

" Pathogen
filetype off
filetype plugin indent on
execute pathogen#infect()
call pathogen#helptags()

" Abbreviations
iabbrev ret return
iabbrev init@ def<space>__init__(
iabbrev main@ if<space>__name__<space>==<space>'__main__':
" Test Abbreviations for Rspec
iabbrev its@ it { is_expected.to contain_('') }
iabbrev itfile@ it { is_expected.to contain_file('') }
iabbrev itclass@ it { is_expected.to contain_class('') }
iabbrev itcron@ it { is_expected.to contain_cron('') }
iabbrev itpack@ it { is_expected.to contain_package('') }

" Normal Mode bindings
" Buffer movement
nnoremap <Leader>s :update<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>wq :wq!<CR>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>t :enew<CR>
nnoremap <Leader>bs :split<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>sv :source ~/.vimrc<CR>
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>o :only<CR>

" git commands
" git commit
nnoremap <Leader>gc :Gcommit -a<CR>

" SparkleFormation Commands
nnoremap <Leader>sp :!bundle exec sfn print -f % \| jq .<CR>

" Force commands
nnoremap <Leader>wq :wq!<CR>
nnoremap <Leader>w :w!<CR>

" <space> selects word.
nnoremap <space> viw
" <Leader>" or ' puts current item into quotes
nnoremap <Leader>' ysiw
nnoremap <Leader>" ysiw
" nnoremap <Leader>' viw<esc>a'<esc>hbi'<esc>lel
" Puts current item into parenthesis
nnoremap <Leader>) Ea)<esc>Bi(<esc>B
nnoremap <Leader>f /def <CR>ww
" Easy movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Goto beginning and end of line.
nnoremap L $
nnoremap H ^
" Comment out line.
nnoremap <buffer> <Leader>c I#<esc>h

"Utility
nnoremap <F1> :set invnumber<CR>
nnoremap <F2> :set invpaste<CR>

" Ctrl bindings for Insert Mode.
inoremap <C-d> <esc>ddi
inoremap <C-y> <esc>yyi
inoremap <C-p> <esc>pi
inoremap <C-u> <esc>ui
inoremap <C-L> <esc>$i
inoremap <C-H> <esc>^i
" Exit Insert Mode.
inoremap jk <esc>

" Visual Mode bindings.
vnoremap jk <esc>
vnoremap v <esc>

" No more training wheels.
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>
"noremap <esc> <nop>

" Operators
onoremap p i(
