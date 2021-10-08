local map = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

map ('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map ('n', '<leader>fw', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
map ('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
map ('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)
map ('n', '<leader>fm', '<cmd>lua require("telescope.builtin").man_pages()<CR>', opts)
