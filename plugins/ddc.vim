" 使いたいsourceを指定する
call ddc#custom#patch_global('completionMenu', 'pum.vim')
call ddc#custom#patch_global('sources', ['nvim-lsp', 'around'])

call ddc#custom#patch_global('sourceOptions', {
        \ '_': {
        \   'matchers': ['matcher_head'],
        \   'sorters': ['sorter_rank']},
        \ 'around': {
        \   'mark': 'around' },
        \ 'nvim-lsp': {
        \   'mark': 'lsp',
        \   'forceCompletionPattern': '\.\w*|:\w*|->\w*' },
        \ })

" Use Customized labels
call ddc#custom#patch_global('sourceParams', {
      \ 'nvim-lsp': { 'kindLabels': { 'Class': 'c' } },
      \ })

" dcc.vimの機能を有効にする
call ddc#enable()



" control + i or jで補完候補を選択、control + l で選択
inoremap <C-j> <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <C-k> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-l> <Cmd>call pum#map#confirm()<CR>

