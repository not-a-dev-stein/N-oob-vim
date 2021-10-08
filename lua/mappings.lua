local map = vim.api.nvim_set_keymap
local expr_opts = { noremap=true, silent=true, unique=true, expr=true }
local opts = { noremap=true, silent=true, unique=true }

-- Leader key (I set as space but you can change to what you want)
map('n', '<SPACE>', '<Nop>', opts)
vim.g.mapleader = " "

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
map("", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)
map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)

-- Integrated terminal bindings
vim.cmd[[command! -nargs=* T split | resize 15 | terminal <args>]]  -- :T to open

-- Auto-formatting with Neoformat
map('', '<C-I>', '<ESC>:Neoformat<CR>', opts)
