local map = vim.api.nvim_set_keymap
local expr_opts = { noremap=true, silent=true, unique=true, expr=true }
local opts = { noremap=true, silent=true, unique=true }

-- Leader key (I set as space but you can change to what you want)
map('n', '<SPACE>', '<Nop>', opts)
vim.g.mapleader = " "

-- Pressing leader key twice to quickly switch between last two buffers
map('n', '<leader><leader>', '<C-^>', opts)

-- Using Ctrl+HJKL to easily navigate between splits
map('n', '<c-h>', ':wincmd h<CR>', {silent = true})
map('n', '<c-j>', ':wincmd j<CR>', {silent = true})
map('n', '<c-k>', ':wincmd k<CR>', {silent = true})
map('n', '<c-l>', ':wincmd l<CR>', {silent = true})

-- Easily move the entire current line up or down
map('n', 'J', ':m+1<CR>', opts)
map('n', 'K', ':m-2<CR>', opts)
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)

-- Using j/k/up/down to jump lines (even wrapped ones) for better navigation
map("", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)
map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)

-- Using ESC to disable search highlighting
map("n", "<Esc>", ":noh <CR>", {silent = true})

-- Easier indenting control in visual mode
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)

-- Ctrl+t to open an integrated terminal in a split, like other IDEs
map('n', '<leader>t', ':split | resize 15 | set nonumber norelativenumber | terminal<CR>:set nobuflisted<CR>a', {silent = true})
map('t', '<C-a>','<C-\\><C-n>', opts) -- Ctrl+a to exit terminal mode

-- Auto-formatting
map('', '<C-I>', '<ESC>:lua vim.lsp.buf.formatting<CR>', opts)

-- Plugin mappings --
--------------------------------------------------
-- Start the preview when editing Markdown files
map('n', '<C-m>', '<Plug>MarkdownPreviewToggle', {silent = true})

-- Toggling nvim-tree with barbar
map('n', '<C-n>', ':lua require"plugins.tree".toggle()<CR>', opts)
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true})
map('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true})
