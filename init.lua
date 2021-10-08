---------------------------
--       N(OOB)VIM       --
---------------------------
-- Author: Daimar Stein
-- Email: daimarstein@pm.me
-- Licensed through GPL v3.0.


-- General configurations --
require('config')

-- Keyboard mappings --
require('mappings')

-- Plugins --
require('plugins.init')
---------------------------
require('plugins.barbar')
require('plugins.cmp')
require('plugins.comment')
require('plugins.dashboard')
require('plugins.gitsigns')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.nvimtree')
require('plugins.telescope')
require('plugins.treesitter')
---------------------------
require'colorizer'.setup()
require'nvim-autopairs'.setup()

-- Colorscheme
require('onedark').load()


-- Extras --
-- These require extra packages to be installed for use,
-- it's up to you to decide what you want to use from these
require('extras')
