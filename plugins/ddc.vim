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

" タブで補完候補を選択できるようにする
inoremap <Tab> <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>

