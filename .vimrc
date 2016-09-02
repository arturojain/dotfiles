" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    " Syntaxis checker
    Bundle 'scrooloose/syntastic'
    " Surround with tags
    Bundle 'tpope/vim-surround'
    " Add delimiter surrounding ()
    Bundle 'Raimondi/delimitMate'
    "Git Integration
    Bundle 'tpope/vim-fugitive'
    "Move arond easier lead lead b n
    " Bundle 'Lokaltog/vim-easymotion'
    "Fuzzy Autocompleter
    Bundle 'Valloric/YouCompleteMe'
    "UI Colors
    Bundle 'flazz/vim-colorschemes'
    " Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    Bundle 'bling/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    "Dependency ?
    Bundle 'tomtom/tlib_vim'
    "Snippets
    " Bundle 'SirVer/ultisnips'
    " Old snippets plugin
    " Bundle 'garbas/vim-snipmate'
    " Bundle "honza/vim-snippets"
    " Block commenter
    " Bundle 'tComment'
    " Languaje Specific
    " CSS
    Bundle 'wavded/vim-stylus'
    " Latex
    Bundle 'vim-latex/vim-latex'
    " PHP
    Bundle 'phpvim'
    " Javascript
    Bundle "pangloss/vim-javascript"
    " CoffeScript
    Bundle 'vim-coffee-script'
    " Slim/HTML
    Bundle 'slim-template/vim-slim'
    " Jade
    Bundle 'digitaltoad/vim-jade'
    " Pug
    Bundle 'digitaltoad/vim-pug'
    " Lorem ipsum
    Bundle "loremipsum"
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
"set line numbers
set number
"Maximize gvim window
if has("gui_running")
    colorscheme google
    set bg=dark
    set guioptions-=T
    set guioptions-=r
    "Remove left scrollbar
    set go-=L
    set guifont=Fira\ Mono\ for\ Powerline\:h14
    set columns=100
    set lines=50
    set encoding=utf-8
    set cursorline
else
    set term=xterm-256color
    set encoding=utf-8
    set termencoding=utf-8
    " set t_Co=256
    colorscheme google 
    set bg=dark
    set guifont=Fira\ Mono\ for\ Powerline\:h14
endif
"default indentation
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
"default backspace behavior
set backspace=indent,eol,start
"Latin America keyboard specifics
"Hidden chars
nmap <leader>h :set list!<CR>
set listchars=tab:▸\ ,eol:¬
"Insert just one char with space
:nmap <Space> i_<Esc>r
"enable check for type of file and syntax
filetype plugin on
filetype indent plugin on
syntax on
"------------------Plug In Specfics ------------------------------------------
"
"Tex Config
let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
let g:Tex_MultipleCompileFormats = 'dvi,pdf,ps'

"YouCompleteMe UltiSnip Tab
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"Better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
