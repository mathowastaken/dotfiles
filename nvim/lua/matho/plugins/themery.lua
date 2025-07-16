return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "Rose Pine",
					colorscheme = "rose-pine-main",
				},
				{
					name = "Rose Pine Dawn",
					colorscheme = "rose-pine-dawn",
				},
				{
					name = "Kanagawa Dragon",
					colorscheme = "kanagawa-dragon",
				},
			},
			livePreview = true,
		})
	end,
}
