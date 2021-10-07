local set = vim.opt

-- Mouse
set.mouse = 'a'

-- Cores
set.termguicolors = true

vim.g.colors_name = 'gruvbox-material'
vim.cmd[[
    syntax on
    let g:gruvbox_material_better_performance = 1
    hi StatusLineNC guifg=none guibg=none
]]

-- Clipboard
set.clipboard = 'unnamedplus'

-- Completar os inputs com TAB
set.completeopt = 'menu','menuone','noselect'

-- Indentação
set.expandtab = true
set.smartindent = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.list = true
set.listchars:append('space:⋅')

-- Número da linha
vim.wo.number = true
vim.wo.cursorline = true
set.relativenumber = true

-- Splits da tela
set.splitbelow = true
set.splitright = true
set.fillchars:append('vert:▕')

-- Folding
set.foldnestmax = 2
set.foldcolumn = 'auto'
set.foldmethod = 'expr'
set.foldexpr = 'nvim_treesitter#foldexpr()'

-- Backup e swap
vim.o.swapfile = false
vim.o.writebackup = false
