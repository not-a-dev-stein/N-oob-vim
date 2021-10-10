local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      horizontal = { width = 0.6 }, -- Change this to a value that's more comfortable to your usage
}}}

-- Uncomment this and comment the one below it if you don't want dotfiles to show on your search
-- map ('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map ('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--hidden,--files<CR>', opts)

map ('n', '<leader>fw', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
map ('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
map ('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)
map ('n', '<leader>fm', '<cmd>lua require("telescope.builtin").man_pages()<CR>', opts)
