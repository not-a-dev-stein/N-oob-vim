require'nvim-tree'.setup {
    lsp_diagnostics = true,
    open_on_setup = true,
    auto_close = true,
    open_on_tab = true,
    update_focused_file = { enable = true },
    view = { side='left', width = 26 }
}

local map = vim.api.nvim_set_keymap

-- Options (I have no idea how to port these "let g:" to lua)
vim.cmd[[let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
        let g:nvim_tree_auto_ignore_ft = ['dashboard']
        let g:nvim_tree_gitignore = 1
        let g:nvim_tree_indent_markers = 1
        let g:nvim_tree_git_hl = 1
        let g:nvim_tree_group_empty = 1
        let g:nvim_tree_window_picker_exclude = {
            \   'filetype': [
            \     'notify',
            \     'packer',
            \     'qf'
            \   ],
            \   'buftype': [
            \     'terminal'
            \   ]
            \ }
        let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
        let g:nvim_tree_show_icons = {
            \ 'git': 1,
            \ 'folders': 1,
            \ 'files': 1,
            \ 'folder_arrows': 0,
            \ }
        let g:nvim_tree_icons = {
            \ 'default': '',
            \ 'symlink': '',
            \ 'git': {
            \   'unstaged': "✗",
            \   'staged': "✓",
            \   'unmerged': "",
            \   'renamed': "➜",
            \   'untracked': "★",
            \   'deleted': "",
            \   'ignored': "◌"
            \   },
            \ 'folder': {
            \   'arrow_open': "",
            \   'arrow_closed': "",
            \   'default': "",
            \   'open': "",
            \   'empty': "",
            \   'empty_open': "",
            \   'symlink': "",
            \   'symlink_open': "",
            \   },
            \   'lsp': {
            \     'hint': "",
            \     'info': "",
            \     'warning': "",
            \     'error': "",
            \   }
            \ }
]]