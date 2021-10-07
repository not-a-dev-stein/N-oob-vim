---------------------------
--       N(OOB)VIM       --
---------------------------
-- Author: Daimar Stein
-- Email: daimarstein@pm.me
-- Licensed through GPL v3.0.


-- General configurations
require('config')

-- Keyboard mappings
require('mappings')

-- Plugins
require('plugins.init')
---------------------------
require('plugins.cmp')
require('plugins.comment')
require('plugins.gitsigns')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.nvimtree')
require('plugins.treesitter')
---------------------------
require'colorizer'.setup()
require'nvim-autopairs'.setup()
