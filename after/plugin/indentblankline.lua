-- configuration for whitespace characters [[ nextLine or enter, space, multispace ]]
vim.opt.list = true
-- vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "lead:∙" -- lead space replacements
vim.opt.listchars:append "trail: "
vim.opt.listchars:append "extends:>"
vim.opt.listchars:append "precedes:<"
vim.opt.termguicolors = true

require('indent_blankline').setup {
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true,
    space_char_blankline = " "
}
