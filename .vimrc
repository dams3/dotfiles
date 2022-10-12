set number relativenumber
syntax on
set showcmd

set incsearch
set hlsearch

inoremap jk <ESC>



"for CP
noremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %<.out % && ./%< < inp<CR>
inoremap <F6> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o "%<.out" "%" && "./%<" < inp<CR>
noremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %< % && ./%< <CR>
inoremap <F5> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -O2 -o %< % && ./%< <CR>
