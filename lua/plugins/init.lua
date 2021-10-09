return require'packer'.startup({function()
    -- Permite que o packer gerencie a si mesmo
    use 'wbthomason/packer.nvim'

    -- Plugins WITHOUT inline configurations
    use 'glepnir/dashboard-nvim'
    use 'mhartington/formatter.nvim'
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    use 'terrortylor/nvim-comment'
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'
    use 'kyazdani42/nvim-web-devicons'
    use 'olimorris/onedark.nvim'
    use 'lambdalisue/suda.vim'

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
    use "neovim/nvim-lspconfig"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'

end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({border = 'single'})
        end
    }
}})

