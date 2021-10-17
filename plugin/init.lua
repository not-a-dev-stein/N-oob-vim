return require'packer'.startup({function()
    -- Permite que o packer gerencie a si mesmo
    use 'wbthomason/packer.nvim'

    -- Plugins WITHOUT inline configurations
    use { 'glepnir/dashboard-nvim',
        'onsails/lspkind-nvim',
        'iamcco/markdown-preview.nvim',
        'windwp/nvim-autopairs',
        'norcalli/nvim-colorizer.lua',
        'terrortylor/nvim-comment',
        'nvim-treesitter/nvim-treesitter',
        'p00f/nvim-ts-rainbow',
        'kyazdani42/nvim-web-devicons',
        'Pocco81/Catppuccino.nvim',
        'lambdalisue/suda.vim'
    }
    -- Plugins WITH inline configurations
    use {'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'},
    }
    use {'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }
    use {'lukas-reineke/indent-blankline.nvim',
        config = function()require("indent_blankline").setup {
            space_char_blankline = " ",
            show_current_context = true,
        } end
    }
    use {'shadmansaleh/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }
    use {'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }
    use {
      'nvim-telescope/telescope.nvim',
      requires = {'nvim-lua/plenary.nvim'}
    }
    -- LSP and Snippets configurations
    use { 'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'L3MON4D3/LuaSnip',
        'hrsh7th/nvim-cmp',
        'saadparwaiz1/cmp_luasnip'
    }

end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({border = 'single'})
        end
    }
}})
