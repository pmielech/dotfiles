-- indent
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true


lvim.transparent_window = true


-- LSP
lvim.builtin.treesitter.ensure_installed = {
    "python",
}
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        name  = "black",
    },
}


local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = "flake8", args = { "--ignore=E203"}, filetypes = {"python"}
    }
}



