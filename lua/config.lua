local set = vim.opt

-- Automatically running as sudo with Suda.vim
vim.g.suda_smart_edit = 1

-- Backup and swap
vim.o.swapfile = false
vim.o.writebackup = false

-- Dealing with custom colors
set.termguicolors = true
vim.cmd[[autocmd ColorScheme * hi StatusLine guifg=none guibg=none | hi StatusLineNC guifg=none guibg=none | hi FoldColumn guifg='#62666D' guibg=none | hi dashboardFooter guifg='#EEA824' | hi dashboardHeader guifg='#EEA825'| hi dashboardCenter guifg='#4C4F55' | hi dashboardShortCut guifg='#4C4F55' | hi VertSplit guifg='#393b44']]

-- Clipboard
set.clipboard = 'unnamedplus'

-- Completion using TAB
set.completeopt = {'menu','menuone','noselect'}

-- Folding
set.foldnestmax = 2
set.foldcolumn = 'auto'
set.foldmethod = 'expr'
set.foldexpr = 'nvim_treesitter#foldexpr()'

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
set.relativenumber = true

-- Misc
vim.bo.filetype = 'indent'
set.lazyredraw = true
set.wildignorecase = true
set.ignorecase = true
set.smartcase = true

-- Mouse
set.mouse = 'a'

-- Splits
set.splitbelow = true
set.splitright = true
set.fillchars:append('vert:▕')
set.fillchars:append('eob: ')
