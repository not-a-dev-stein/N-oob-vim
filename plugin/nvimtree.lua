require'nvim-tree'.setup {
    open_on_setup = true,
    auto_close = true,
    open_on_tab = true,
    update_focused_file = { enable = true },
    view = { side='left', width = 26 }
}

-- Options (I have no idea how to port these "let g:" to lua)
vim.g.nvim_tree_ignore = {'.git, node_modules, .cache'}
vim.g.nvim_tree_auto_ignore_ft = {'dashboard'}
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_window_picker_exclude = {'filetype: {"notify, packer, qf"}, buftype: {"terminal"}'}
vim.g.nvim_tree_special_files = {'"README.md": 1, "Makefile": 1, "MAKEFILE": 1'}
vim.g.nvim_tree_show_icons = {'"default: "", "symlink": "", "git": {"unstaged": "✗", "staged": "✓", "unmerged": "", "renamed": "➜", "untracked": "★", "deleted": "", "ignored": "◌"}, folder: {"default": "", "open": "", "empty": "", "empty_open": "", "symlink": "", "symlink_open": ""}'}
