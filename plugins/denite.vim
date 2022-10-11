" denite
"  <C-g> open Denite command shortcut
"    g : all file search
"    f : all file name search
"  <C-o> open Denite-file-buffer-list
"    <Esc>      close Denite-file-buffer-list
"    <Space>    select multiple files/buffers
"    s          open files/buffers in split windows (horizonal)
"    v          open files/buffers in split windows (vertical)
"    i          filter by string
"    ..         move to directory above
nnoremap [denite] <Nop>
nmap <C-g> [denite]
nnoremap <silent> [denite]g :<C-u>Denite grep -buffer-name=search-buffer-denite<CR>
nnoremap <silent> [denite]f :<C-u>Denite file/rec -start-filter<CR>
nnoremap <silent> [denite]r :<C-u>Denite -resume -buffer-name=search-buffer-denite<CR>


"nnoremap <silent> <C-o> :<C-u>Denite file buffer file:new<CR>
nnoremap <silent> <C-o> :<C-u>Denite buffer<CR>
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
        nnoremap <silent><buffer><expr> <C-o>
                \ denite#do_map('quit')
        nnoremap <silent><buffer><expr> <Space>
                \ denite#do_map('toggle_select').'j'
        nnoremap <silent><buffer><expr> o 
                \ denite#do_map('do_action', 'open')
        nnoremap <silent><buffer><expr> d
                \ denite#do_map('do_action', 'delete')
        nnoremap <silent><buffer><expr> s
                \ denite#do_map('do_action', 'split')
        nnoremap <silent><buffer><expr> v
                \ denite#do_map('do_action', 'vsplit')
        nnoremap <silent><buffer><expr> i
                \ denite#do_map('open_filter_buffer')
        nnoremap <silent><buffer><expr> ..
                \ denite#do_map('move_up_path')
        nnoremap <silent><buffer><expr> p
                \ denite#do_map('do_action', 'preview')
	nnoremap <silent><buffer><expr> a 
   		\ denite#do_map('choose_action')
endfunction


"grepの設定を追加(公式そのまま)
call denite#custom#var('grep','command', ['rg'])
call denite#custom#var('grep','default_opts',['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep','recursive_opts', [])
call denite#custom#var('grep','pattern_opt', ['--regexp'])
call denite#custom#var('grep','separator', ['--'])
call denite#custom#var('grep','final_opts', [])

"rgでファイル検索のときにgitignoreで指定したファイルは無視する
call denite#custom#var('file/rec', 'command',
    \ ['rg', '--files', '--vimgrep', '--color', 'never'])

