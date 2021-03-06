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
require('colorizer').setup()
require('nvim-autopairs').setup()

-- Colorscheme
require('catppuccino').setup {
    colorscheme = 'soft_manilo',
    transparency = true,
    integrations = {
        gitsigns = true,
    }
}
vim.cmd[[colorscheme catppuccino]]

-- Extras --
-- These require extra packages to be installed for use,
-- it's up to you to decide what you want to use from these
require('extras')
