## Install

1. Install nerd fonts by [this](https://github.com/ryanoasis/nerd-fonts)
2. Install ripgrep by [this](https://github.com/BurntSushi/ripgrep)
3. Install neovim
4. Copy these files into ~/.config/nvim
5. Execute `:PlugInstall` in neovim

## Key Mapping

### File Operations

|Key Bindings|Mode|Descriptions|
|---|---|---|
|Ctrl-s|Normal|Save|
|\<leader\>w|Normal|Save & Close|
|\<leader\>q|Normal|Close|

### Editor UI

|Key Bindings|Mode|Descriptions|
|---|---|---|
|Ctrl-n|Normal|Toggle file tree|
|F11|Normal|Toggle terminal|
|Ctrl-h|Normal|Move cursor to left buffer|
|Ctrl-l|Normal|Move cursor to right buffer|
|Ctrl-j|Normal|Move cursor to bottom buffer|
|Ctrl-k|Normal|Move cursor to up buffer|

### Search

|Key Bindings|Mode|Descriptions|
|---|---|---|
|\<space\>w|Normal|Search current file word|
|\<space\>f|Normal|Search workspace files|
|\<space\>s|Normal|Search workspace symbols|
|\<space\>g|Normal|Search workspace string|
|\<space\>e|Normal|Search recent used files|
|\<space\>h|Normal|Search history used files|
|\<space\>wc|Normal|Search current file word with current cursor|
|\<space\>fc|Normal|Search workspace files with current cursor|
|\<space\>sc|Normal|Search workspace symbols with current cursor|
|\<space\>gc|Normal|Search workspace string with current cursor|
|\<space\>ec|Normal|Search recent used files with current cursor|
|\<space\>hc|Normal|Search history used files with current cursor|

### Format

|Key Bindings|Mode|Descriptions|
|---|---|---|
|\<leader\>ff|Normal|Format current file|
|\<leader\>f|Visual|Format selected section|
|Alt-j|Normal|Move line down|
|Alt-k|Normal|Move line up|
|Tab|Insert|Move line right|
|Shift-Tab|Insert|Move line left|

### Jump

|Key Bindings|Mode|Descriptions|
|---|---|---|
|gd|Normal|Go to definition|
|gy|Normal|Go to type definition|
|gi|Normal|Go to implementation|
|gr|Normal|Go to references|
|\<leader\>j|Normal|Go to tree from source file|
|\<leader\>s|Normal|Quick move cursor to anywhere|

### Selection

|Key Bindings|Mode|Descriptions|
|---|---|---|
|Ctrl-Up|Normal,Visual|Select range more|
|Ctrl-Down|Normal,Visual|Select range less|

### Action

|Key Bindings|Mode|Descriptions|
|---|---|---|
|\<leader\>qf|Normal|Quick fix current line|
|\<leader\>rn|Normal|Rename|
|\<leader\>a|Visual|Execute action for selected section|
|\<leader\>ac|Normal|Execute action for current line|

### Help

|Key Bindings|Mode|Descriptions|
|---|---|---|
|K|Normal|Display documentation|

### Others

|Key Bindings|Mode|Descriptions|
|---|---|---|
|\<space\>r|Normal|Restart coc, if there has any issue.|