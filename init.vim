" https://github.com/junegunn/vim-plug

call plug#begin('~/.config/nvim/plugged')

" vim-devicons, adds file type icons to Vim
Plug 'ryanoasis/vim-devicons'

" nerdtree, project tree on the left
Plug 'scrooloose/nerdtree'
" nerdtree-git-plugin, support git status on nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'
" vim-nerdtree-syntax-highlight, display different icon by file type
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" vim-airline, a statusline
Plug 'vim-airline/vim-airline'
" vim-airline-themes, more Theme for vim-airline
Plug 'vim-airline/vim-airline-themes'

" coc, full language server protocol support as VSCode
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" minimalist, a good color scheme
Plug 'dikiaap/minimalist'

" vim-easymotion, move cursor to anywhere
Plug 'easymotion/vim-easymotion'

" delimitmate, auto insert closing of quotes
Plug 'raimondi/delimitmate'

" Use vim and godot engine to make games
Plug 'habamax/vim-godot'

call plug#end()

" load config from modules
source ~/.config/nvim/neovim.config.vim
source ~/.config/nvim/nerdtree.config.vim
source ~/.config/nvim/vim_airline.config.vim
source ~/.config/nvim/vim_airline_themes.config.vim
source ~/.config/nvim/coc.config.vim
source ~/.config/nvim/minimalist.config.vim
source ~/.config/nvim/vim_easymotion.config.vim
source ~/.config/nvim/vim-godot.config.vim