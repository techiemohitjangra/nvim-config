return {
    'prichrd/netrw.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('netrw').setup {
            icons = {
                symlink = '',   -- Symlink icon (directory and file)
                directory = '', -- Directory icon
                file = '',      -- File icon (directory and file)
            },
            use_devicons = true,      -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
        }
    end
}
