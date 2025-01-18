if vim.bo.filetype == "gdscript" then
    -- Editor config
    vim.opt.expandtab = false

    -- LSP config
    local port = os.getenv('GDScript_Port') or '6005'
    local cmd = vim.lsp.rpc.connect('127.0.0.1', port)
    local pipe = '/tmp/godot.pipe'

    vim.lsp.start({
        name = 'Godot',
        cmd = cmd,
        root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
        on_attach = function(client, bufnr)
            vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
        end
    })

    vim.api.nvim_buf_set_keymap(0, 'n', "<leader>f", ":silent !gdformat %<CR>", { noremap = true, silent = true })
end
