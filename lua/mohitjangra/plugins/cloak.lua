return {
    'laytan/cloak.nvim',
    config = function()
        require("cloak").setup({
            enable = true,
            cloak_character = "*",
            highlight_group = "Comment",
            patterns = {
                {
                    -- set file to cloak to work with
                    file_pattern = {
                        ".env",
                        ".dev.vars",
                    },
                    cloak_pattern = "=.+",
                },
            },
        })
    end
}
