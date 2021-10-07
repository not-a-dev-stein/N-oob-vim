local map = vim.api.nvim_set_keymap
local expr_opts = { noremap=true, silent=true, unique=true, expr=true }
local opts = { noremap=true, silent=true, unique=true }

-- Tecla leader
map('n', '<SPACE>', '<Nop>', opts)
vim.g.mapleader = " "

-- Terminal integrado
vim.cmd[[command! -nargs=* T split | resize 15 | terminal <args>]]

-- Use ESC para desligar o highlighting de pesquisa
map("n", "<Esc>", ":noh <CR>", opts)

-- Usar atalhos de teclado para criar splits rapidamente
map('', '<leader>h', '<C-u>:split<CR>', opts)
map('', '<leader>v', '<C-u>:vsplit<CR>', opts)

-- Usar Ctrl+HJKL para navegar entre splits
map('n', '<c-h>', ':wincmd h<CR>', {silent = true})
map('n', '<c-j>', ':wincmd j<CR>', {silent = true})
map('n', '<c-k>', ':wincmd k<CR>', {silent = true})
map('n', '<c-l>', ':wincmd l<CR>', {silent = true})

-- Melhor experiência com indentação
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)

-- Mover a linha atual para cima ou para baixo sem precisar copiar e colar
map('n', 'J', ':m .+1<CR>==', opts)
map('n', 'K', ':m .-2<CR>==', opts)
map('v', 'J', ':m \'>+1<CR>gv=gv', opts)
map('v', 'K', ':m \'<-2<CR>gv=gv', opts)

-- Usar o j/k para pular linhas (incluindo linhas com wrap)
map("", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)
map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', expr_opts)
map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', expr_opts)
