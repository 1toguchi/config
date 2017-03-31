"#pythonのpdbを起動する
nmap <F12> Oimport pdb; pdb.set_trace()jj
nmap <Space><F12> :!python3 %<CR>

noremap <C-l> gt
noremap <C-h> gT
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent> [a :bprevious<CR>
nnoremap <silent> ]a :bnext<CR>
nnoremap <silent> [A :bfirst<CR>
nnoremap <silent> ]A :blast<CR>


let mapleader = "\<Space>"

inoremap <silent> jj <ESC>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"ハイライトを解除したい時
nnoremap <Esc><Esc> :noh

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" Shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>


set tabstop=2
set shiftwidth=2
set number
"set clipboard=unnamed,autoselect
set runtimepath+=$HOME/.vim/vimdoc-ja-master/doc
set cursorline
set ruler
set hlsearch
set nrformats=
set history=200

cnoremap <C-p> <Down>
cnoremap <C-n> <Up>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"---------------------------
" Start Neobundle Settings.
"---------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'altercation/vim-colors-solarized'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" " vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1 
syntax enable
set background=light

NeoBundle 'rcmdnk/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'moznion/hateblo.vim'
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Safari'

"snipet
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'


call neobundle#end()
" Required:
filetype plugin indent on
NeoBundleCheck
"-------------------------
" End Neobundle Settings.
"-------------------------
