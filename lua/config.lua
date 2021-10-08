local set = vim.opt

-- Mouse
set.mouse = 'a'

-- Colors
set.termguicolors = true
vim.g.colors_name = 'gruvbox'
vim.cmd[[
    syntax on
    hi StatusLine guifg='#282828' guibg='#282828'
    hi StatusLineNC guifg='#282828' guibg='#282828'
]] -- Change these highlights if you change the colorscheme

-- Clipboard
set.clipboard = 'unnamedplus'

-- Completion using TAB
set.completeopt = 'menu','menuone','noselect'

-- Indentation
set.expandtab = true
set.smartindent = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.list = true
set.listchars:append('space:⋅')

-- Line number
vim.wo.number = true
vim.wo.cursorline = true
set.relativenumber = true

-- Splits
set.splitbelow = true
set.splitright = true
set.fillchars:append('vert:▏')
set.fillchars:append('eob: ')

-- Folding
set.foldnestmax = 2
set.foldcolumn = 'auto'
set.foldmethod = 'expr'
set.foldexpr = 'nvim_treesitter#foldexpr()'

-- Backup and swap
vim.o.swapfile = false
vim.o.writebackup = false
