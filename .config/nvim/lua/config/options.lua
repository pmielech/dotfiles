-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- AUTOLOAD venv
local augroup = vim.api.nvim_create_augroup("VenvSelectorRetrieve", { clear = true })
vim.api.nvim_create_autocmd({ "LspAttach" }, {
	pattern = { "*.py" },
	group = augroup,
	callback = function(args)
		if vim.lsp.get_client_by_id(args["data"]["client_id"])["name"] == "pyright" then
			require("venv-selector").retrieve_from_cache()
			vim.api.nvim_del_augroup_by_id(augroup)
		end
	end,
})
