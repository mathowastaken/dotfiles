return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"bash",
			"lua",
			"luadoc",
			"vim",
			"vimdoc",
      "c",
      "query",
      "markdown",
      "markdown_inline",
			"rust",
			"go",
			"zig",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
