---------------------------
--       N(OOB)VIM       --
---------------------------
-- Autor: Daimar Stein
-- Email: daimarstein@pm.me
-- Licensiado através da GPL v3.0.


-- Configurações do usuário
require('config')

-- Atalhos do teclado
require('mappings')

-- Plugins
require('plugins.init')
---------------------------
require('plugins.comment')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.nvimtree')
require('plugins.treesitter')
---------------------------
require'colorizer'.setup()
require'gitsigns'.setup()
require'nvim-autopairs'.setup()
