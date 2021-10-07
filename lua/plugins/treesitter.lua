require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        -- use_languagetree = true,
        additional_vim_regex_highlighting = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
    run = ':TSUpdate',
}
