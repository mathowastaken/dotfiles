local M = {}

M.servers = {
	html = {},
	lua_ls = {
		settings = {
			Lua = {
				completion = {
					callSnippet = "Replace",
				},
				workspace = {
					checkThirdParty = false,
					telemetry = { enable = false },
				},
			},
		},
	},
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
}

M.ensure_installed = {
	"stylua",
	"html-lsp",
	"css-lsp",
	"lua_ls",
	"prettier",
	"gopls",
	"dockerfile-language-server",
	"docker-compose-language-service",
	"golangci-lint",
	"zls",
	"rust-analyzer",
	"rustfmt",
	"stylelint",
	"htmlhint",
}

return M
