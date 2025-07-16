return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			local disable_filetypes = {}
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			rs = { "rustfmt" },
			html = { "prettier" },
			css = { "prettier" },
			javascript = { "prettier" },
			md = { "prettier" },
			json = { "prettier" },
			go = { "gopls" },
			c = { "clang-format" },
			zig = { "zls" },
		},
	},
}
