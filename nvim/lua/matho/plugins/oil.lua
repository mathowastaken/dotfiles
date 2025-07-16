return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, bufnr)
				local m = name:match("^%.")
				return m ~= nil
			end,
			is_always_hidden = function(name, bufnr)
				return false
			end,
			natural_order = "fast",
			case_insensitive = false,
			sort = {
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
