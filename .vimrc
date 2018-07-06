" Tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Syntax
syntax on

" Number
set number

" Indentation
filetype plugin indent on
set autoindent
set smartindent

" Regex
set ignorecase
set smartcase
set hlsearch
set incsearch

" Status Bar
set ruler
set nu
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%l,%c/%L\L\ %P



" Automatically chmod +x #!
function MakeScriptExecuteable()
    if getline(1) =~ "^#!"
        silent !chmod +x %:p
    endif
endfunction
au BufWritePost * call MakeScriptExecuteable()

" powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
