return {
    {
        'rose-pine/neovim',
        name = 'rosepine',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('rose-pine')
            require('lualine').setup({
                options = {
                    theme = 'rose-pine'
                }
            })
        end
    },
    {
        'Mofiqul/dracula.nvim',
        name = 'dracula',
    },
    {
        'oxfist/night-owl.nvim',
        name = 'nightowl',
    },
    {
        'folke/tokyonight.nvim',
        name = 'tokyonight',
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa',
    },
    {
        'rmehri01/onenord.nvim',
        name = 'onenord'
    }
}

