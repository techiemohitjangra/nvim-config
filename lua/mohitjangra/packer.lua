-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end
            }
        }
    })

    -- [[ Themes ]]
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        -- config = function()
        --     vim.cmd('colorscheme rose-pine')
        -- end
    })
    use({
        'navarasu/onedark.nvim',
        as = 'onedark',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'onedark' -- enabled/active theme
        end,
    })
    use({
        'dracula/vim',
        as = 'dracula',
    })

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        requires = { { 'nvim-treesitter/nvim-treesitter-textobjects' } },
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    })

    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")

    -- Git related plugins
    use("tpope/vim-fugitive")
    use("tpope/vim-rhubarb")

    -- Detect tabstop and shiftwidth automatically
    use("tpope/vim-sleuth")

    -- LSP progress indicator
    use({
        "j-hui/fidget.nvim",
        tag = 'legacy',
        config = function()
            require("fidget").setup ({
                --options
            })
        end,
    })


    use("nvim-treesitter/nvim-treesitter-context");
    use('theprimeagen/vim-be-good')
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            {
                'folke/neodev.nvim',
                config = {
                    function()
                        require('neodev').setup()
                    end },
            },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    })

    use({
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    })

    use({
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    })

    use('lewis6991/gitsigns.nvim')
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    use('lukas-reineke/indent-blankline.nvim')

    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    })
end)
