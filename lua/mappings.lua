local map = vim.api.nvim_set_keymap
local expr_opts = { noremap=true, silent=true, unique=true, expr=true }
local opts = { noremap=true, silent=true, unique=true }

-- Leader key (I set as space but you can change to what you want)
map('n', '<SPACE>', '<Nop>', opts)
vim.g.mapleader = " "

-- Pressing leader key twice to quickly switch between last two buffers
map('n', '<leader><leader>', '<C-^>', opts)

-- Using ESC to disable search highlighting
map("n", "<Esc>", ":noh <CR>", {silent = true})

-- Using Ctrl+HJKL to easily navigate between splits
map('n', '<c-h>', ':wincmd h<CR>', {silent = true})
map('n', '<c-j>', ':wincmd j<CR>', {silent = true})
map('n', '<c-k>', ':wincmd k<CR>', {silent = true})
map('n', '<c-l>', ':wincmd l<CR>', {silent = true})

-- Easier indenting control in visual mode
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)

-- Easily move the entire current line up or down
map('n', 'J', ':m .+1<CR>==', opts)
map('n', 'K', ':m .-2<CR>==', opts)
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)

-- Using j/k/up/down to jump lines (even wrapped ones) for better navigation
map("", "j", 'gj', expr_opts)
map("", "k", 'gk', expr_opts)
map("", "<Down>", 'gj', expr_opts)
map("", "<Up>", 'gk', expr_opts)

-- Ctrl+t to open an integrated terminal in a split, like other IDEs 
map('n', '<C-t>', ':split | resize 15 | set nonumber norelativenumber | terminal<CR>:set nobuflisted<CR>a', {silent = true})
map('t', '<C-a>','<C-\\><C-n>', opts) -- Ctrl+a to exit terminal mode

-- Auto-formatting
map('', '<C-I>', '<ESC>:lua vim.lsp.buf.formatting<CR>', opts)

-- Plugin mappings --
--------------------------------------------------

-- Start the preview when editing Markdown files
map('n', '<C-m>', '<Plug>MarkdownPreviewToggle', {silent = true})

-- Toggling nvim-tree with barbar
vim.api.nvim_set_keymap('n', '<C-n>', ':lua require"plugins.barbar".toggle()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true})
