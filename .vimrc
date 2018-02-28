set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Git tools "
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'airblade/vim-gitgutter'








"General Appearance"
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'rking/ag.vim'





"Navigation"
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'



"Productivity"
Plugin 'junegunn/goyo.vim'


" SuperTab "
Plugin 'ervandew/supertab'



"Programming languages"
Plugin 'jiangmiao/auto-pairs'

"Linter"
Plugin 'w0rp/ale'


"" bash ""
Plugin 'vim-scripts/bash-support.vim'


""" C/C++ """
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'octol/vim-cpp-enhanced-highlight'


"Syntax and Formats "
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'chase/vim-ansible-yaml'
Plugin 'Chiel92/vim-autoformat'


"Durability"
Plugin '907th/vim-auto-save'






""""" Nice documentation""""""




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



let g:ycm_python_binary_path='python3'
let g:ycm_filetype_whitelist = {'cc':1, 'cpp':1, 'h':1, 'py':1}
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_confirm_extra_conf = 0
nnoremap <S-s> :YcmComplete GoToDefinition<CR>
nnoremap <S-c> :YcmComplete GoToDeclaration<CR>
nnoremap <S-y> :YcmComplete GetType<CR>
let g:ycm_global_ycm_extra_conf = "/home/rith/.vim/bundle/YouCompleteMe/ycm_extra.conf.py"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'





" UltiSnipps related variables "
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsSnippetDir='/home/rith/.vim/ultisnipsdir/'
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit='vertical'


syntax on
color badwolf

"ale keep sign coloum always on"
let g:ale_sign_column_always = 1


" Auto save settings"
let g:auto_save = 1
let g:auto_save_silent = 1  " do not display the auto-save notification




"General Vim Settings "
set number
set splitbelow

"For Debugging "
packadd termdebug
let g:termdebug_wide = 1
set t_BE= to

autocmd BufNewFile main.cc r ~/.rith-config/main.txt
