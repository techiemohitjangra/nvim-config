return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns
                vim.keymap.set('n', '<leader>hp', gs.preview_hunk,
                    { buffer = bufnr, desc = 'Preview git hunk' }
                )
                vim.keymap.set({ 'n', 'v' }, ']c', function()
                    if vim.wo.diff then return ']c' end
                    vim.schedule(function() gs.next_hunk() end)
                    return '<Ignore>'
                end, { expr = true, buffer = bufnr, desc = 'Jump to next hunk' })
                vim.keymap.set({ 'n', 'v' }, '[c', function()
                    if vim.wo.diff then return '[c' end
                    vim.schedule(function() gs.prev_hunk() end)
                    return '<Ignore>'
                end, { expr = true, buffer = bufnr, desc = "Jump to previous hunk" })
            end,
        }
    end
}
