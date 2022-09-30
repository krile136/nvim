if g:dein#_cache_version !=# 420 || g:dein#_init_runtimepath !=# '/Users/matsuokahiroyuki/.config/nvim,/usr/local/etc/xdg/nvim,/etc/xdg/nvim,/Users/matsuokahiroyuki/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.7.2_1/share/nvim/runtime,/usr/local/Cellar/neovim/0.7.2_1/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/matsuokahiroyuki/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/local/etc/xdg/nvim/after,/Users/matsuokahiroyuki/.config/nvim/after,/Users/matsuokahiroyuki/.config/nvim/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/Users/matsuokahiroyuki/.config/nvim/init.vim'])
if empty(s:plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#ftplugin = s:ftplugin
let g:dein#_base_path = '/Users/matsuokahiroyuki/.config/nvim/toml'
let g:dein#_runtime_path = '/Users/matsuokahiroyuki/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/matsuokahiroyuki/.config/nvim/dein/.cache/init.vim'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/Users/matsuokahiroyuki/.config/nvim,/usr/local/etc/xdg/nvim,/etc/xdg/nvim,/Users/matsuokahiroyuki/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/matsuokahiroyuki/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/Users/matsuokahiroyuki/.config/nvim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.7.2_1/share/nvim/runtime,/Users/matsuokahiroyuki/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/local/Cellar/neovim/0.7.2_1/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/matsuokahiroyuki/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/local/etc/xdg/nvim/after,/Users/matsuokahiroyuki/.config/nvim/after'
filetype off
