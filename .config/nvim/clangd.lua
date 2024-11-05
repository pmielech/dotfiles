return {
	"neovim/nvim-lspconfig",
	event = "BufReadPre",
	dependencies = { "hrsh7th/cmp-nvim-lsp" }, -- if you use nvim-cmp
	config = function()
		require("lspconfig").clangd.setup({
			init_options = {
				maxTsServerMemory = 8192,
			},
			-- cmd = { "/opt/homebrew/opt/llvm/bin/clangd", "--background-index" },
			-- root_dir = nvim_lsp.util.root_pattern("compile_commands.json", ".clangd"),
		})
	end,
}
