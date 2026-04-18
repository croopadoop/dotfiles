vim.pack.add({
	{
		src = "https://github.com/neovim/nvim-lspconfig"
	},
})


vim.lsp.enable("basedpyright")
vim.lsp.enable("eslint")
vim.lsp.enable("golangci_lint_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})
