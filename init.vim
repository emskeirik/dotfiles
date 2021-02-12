" ~/.config/nvim/init.vim
set encoding=UTF-8
set number relativenumber
set hidden
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamed 

" Plugins {{{
call plug#begin('~/.vim/plugged')
	
    " Editing {{{
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-abolish'
    Plug 'jiangmiao/auto-pairs'
    " }}}
    
    " File {{{
    Plug 'tpope/vim-vinegar'
    " }}}

    " Syntax {{{
	Plug 'dense-analysis/ale'
	" }}}
			
	" Aesthetics {{{
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'godlygeek/tabular'
	Plug 'ap/vim-css-color'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
	" }}}

	" Rust {{{
	Plug 'timonv/vim-cargo'
	Plug 'rust-lang/rust.vim'
	" }}}
	
  	" Movement {{{
	Plug 'easymotion/vim-easymotion'
	Plug 'unblevable/quick-scope'
	" }}}
    
call plug#end()
" }}}

" Bindings {{{
	
	" Cargo {{{
	nmap<silent> <A-c>b :CargoBuild<CR>
	nmap<silent> <A-c>r :CargoRun<CR>
	nmap<silent> <A-c>u :CargoUpdate<CR>
	nmap<silent> <A-c>t :CargoTest<CR>
    nmap<silent> <A-c>n :CargoNew 
	nmap<silent> <A-c>l :CargoClean<CR>
	nmap<silent> <A-c>d :CargoDoc<CR>
	nmap<silent> <A-c>h :CargoCheck<CR>
	nmap<silent> <A-c>e :CargoBench<CR>
	" }}}

    " Tabs {{{
    nmap<silent> <A-t>k :tabe<CR>
    nmap <A-t>K :tabfind 
    nmap<silent> <A-t>j :tabclose<CR>
    nmap<silent> <A-t>J :tabclose!<CR>
    nmap<silent> <A-t>h :tabp<CR>
    nmap<silent> <A-t>H :tabm -1<CR>
    nmap<silent> <A-t>l :tabn<CR>
    nmap<silent> <A-t>L :tabm +1<CR>
    nmap<silent> <A-t>o :tabonly<CR>
    nmap<silent> <A-t>O :tabonly!<CR>
    nmap<silent> <A-t>p :tabfirst<CR>
    nmap<silent> <A-t>P :tablast<CR>
    " }}}

    " Buffers {{{
    nmap<silent> ; <C-^>
    nmap<silent> <A-k> :enew<CR>
    nmap<A-K> :edit 
    nmap<silent> <A-j> :bd<CR>
    nmap<silent> <A-J> :bd!<CR>
    nmap<silent> <A-h> :bp<CR>
    nmap<silent> <A-l> :bn<CR>
    nmap <A-b> :buffers<CR>:buffer<space>
    nnoremap <A-1> :1b<CR>
    nnoremap <A-2> :2b<CR>
    nnoremap <A-3> :3b<CR>
    nnoremap <A-4> :4b<CR>
    nnoremap <A-5> :5b<CR>
    nnoremap <A-6> :6b<CR>
    nnoremap <A-7> :7b<CR>
    nnoremap <A-8> :8b<CR>
    nnoremap <A-9> :9b<CR>
    nnoremap <A-0> :10b<CR>     
    " }}}
	
	" Splits {{{
	nmap<silent> <Tab> <C-W>w
    nmap<silent> <S-Tab> <C-W>p
    nmap<silent> <A-s>h :split<CR>
    nmap<silent> <A-s>v :vsplit<CR>
	" }}}

	" Session {{{
	nmap<silent> <A-w> :w<CR>
	nmap<silent> <A-W> :bufdo w<CR>
	nmap<silent> <A-q> :q<CR>
	nmap<silent> <A-Q> :q!<CR>
    nmap<silent> <A-x> :w<CR>:bd<CR>
    nmap<Silent> <A-X> :bufdo x<CR>
	nmap<silent> <A-m> :mksession! .session.vim<CR>
	" }}}
	
    " File {{{
	nmap<silent> <A-f> :source %<CR>
	nmap<silent> <A-F> :Lex<CR>
    nmap<silent> <A-c> :%!xxd<CR>
	" }}}
	
	" Editing {{{
	nmap<silent> <A-e> <Plug>(easymotion-prefix)
	nmap <A-E> :%S/
	nmap <A-a> :Tabularize /
	nmap <A-A> :'<,'>Tabularize /
	" }}}

" }}}

" Airline {{{
let g:airline_theme = 'minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" }}}

" Netrw {{{
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" }}}

" Autopairs {{{
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<A-i>'
" }}}
