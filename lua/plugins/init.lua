return require'packer'.startup(function()
    -- Permite que o packer gerencie a si mesmo
    use 'wbthomason/packer.nvim'

    -- Plugins SEM config. manual
    use 'sainnhe/gruvbox-material'
    use 'windwp/nvim-autopairs'
    use 'norcalli/nvim-colorizer.lua'
    use 'terrortylor/nvim-comment'
    use 'p00f/nvim-ts-rainbow'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'lambdalisue/suda.vim'
        vim.cmd[[let g:suda_smart_edit = 1]]

    -- Plugins COM config manual
    use {'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }
    use {'lukas-reineke/indent-blankline.nvim',
        config = function()require("indent_blankline").setup {
            space_char_blankline = " ",
            show_current_context = true,
        } end
    }
    use {'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
    }
    use {'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Configurações do LSP e Snippets
    use "neovim/nvim-lspconfig"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'

end)
