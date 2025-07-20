return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				-- Dark Themes
				{
					name = "Vague",
					colorscheme = "vague",
				},
				{
					name = "Rose Pine Main",
					colorscheme = "rose-pine-main",
				},
				{
					name = "Rose Pine Moon",
					colorscheme = "rose-pine-moon",
				},
				{
					name = "Melange Dark",
					colorscheme = "melange",
					before = [[
						vim.opt.background = "dark"
						vim.opt.termguicolors = true
					]],
				},
				{
					name = "Kanagawa Dragon",
					colorscheme = "kanagawa-dragon",
				},
				{
					name = "Kanagawa Wave",
					colorscheme = "kanagawa-wave",
				},
				{
					name = "Bamboo Vulgaris",
					colorscheme = "bamboo-vulgaris",
				},
				{
					name = "Bamboo Multiplex",
					colorscheme = "bamboo-multiplex",
				},
				{
					name = "Gruvbox Dark",
					colorscheme = "gruvbox",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Gruvbox Material Dark Hard",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
						vim.opt.background = "dark"
						vim.g.gruvbox_material_background = "hard"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 1
					]],
				},
				{
					name = "Gruvbox Material Dark Medium",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
						vim.opt.background = "dark"
						vim.g.gruvbox_material_background = "medium"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 1
					]],
				},
				{
					name = "Gruvbox Material Dark Soft",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
						vim.opt.background = "dark"
						vim.g.gruvbox_material_background = "soft"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 1
					]],
				},
				{
					name = "Zen Bones",
					colorscheme = "zenbones",
					before = [[
						vim.opt.termguicolors = true
						vim.opt.background = "dark"
					]],
				},

				-- Brown Themes
				{
					name = "Chocolatier Dark",
					colorscheme = "chocolatier",
					before = [[
						vim.opt.background = "dark"
					]],
				},
				{
					name = "Miasma",
					colorscheme = "miasma",
				},

				-- Light Themes
				{
					name = "Chocolatier Light",
					colorscheme = "chocolatier",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Melange Light",
					colorscheme = "melange",
					before = [[
						vim.opt.background = "light"
						vim.opt.termguicolors = true
					]],
				},
				{
					name = "Rose Pine Dawn",
					colorscheme = "rose-pine-dawn",
				},
				{
					name = "Kanagawa Lotus",
					colorscheme = "kanagawa-lotus",
				},
				{
					name = "Bamboo Light",
					colorscheme = "bamboo-light",
				},
				{
					name = "Gruvbox Light",
					colorscheme = "gruvbox",
					before = [[
						vim.opt.background = "light"
					]],
				},
				{
					name = "Gruvbox Material Light Hard",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
            vim.opt.background = "light"
						vim.g.gruvbox_material_background = "hard"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 0
					]],
				},
				{
					name = "Gruvbox Material Light Medium",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
            vim.opt.background = "light"
						vim.g.gruvbox_material_background = "medium"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 0
					]],
				},
				{
					name = "Gruvbox Material Light Soft",
					colorscheme = "gruvbox-material",
					before = [[
						vim.opt.termguicolors = true
						vim.opt.background = "light"
						vim.g.gruvbox_material_background = "soft"
						vim.g.gruvbox_material_better_performance = 1
						vim.g.gruvbox_material_transparent_background = 0
					]],
				},
			},
			livePreview = true,
		})
	end,
}
