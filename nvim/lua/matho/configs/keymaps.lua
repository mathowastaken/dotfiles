vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<M-up>", "<cmd>tabnew<CR>", { desc = "Create Tab" })
vim.keymap.set("n", "<M-down>", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<M-left>", "<cmd>tabp<CR>", { desc = "Cycle Tab Left" })
vim.keymap.set("n", "<M-right>", "<cmd>tabn<CR>", { desc = "Cycle Tab Right" })
vim.keymap.set("n", "<left>", "<c-w>5>", { desc = "Moves Split Right" })
vim.keymap.set("n", "<right>", "<c-w>5<", { desc = "Moves Split Left" })
vim.keymap.set("n", "<up>", "<c-W>+", { desc = "Moves Split Down" })
vim.keymap.set("n", "<down>", "<c-W>-", { desc = "Moves Split Up" })

-- Oil keymap
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Themery
vim.keymap.set("n", "<leader>ts", ":Themery<CR>", { desc = "Theme Switcher" })

-- LSP keymaps and autocommands
local M = {}

function M.setup_lsp_keymaps(event)
	local map = function(keys, func, desc)
		vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
	end
	
	-- Navigation
	map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
	map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
	map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
	map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
	
	-- Symbols and workspace
	map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
	map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
	map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
	
	-- Actions
	map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
	map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
end

function M.setup_document_highlight(event)
	local client = vim.lsp.get_client_by_id(event.data.client_id)
	if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
		local highlight_augroup = vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = false })
		
		vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
			buffer = event.buf,
			group = highlight_augroup,
			callback = vim.lsp.buf.document_highlight,
		})
		
		vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
			buffer = event.buf,
			group = highlight_augroup,
			callback = vim.lsp.buf.clear_references,
		})
		
		vim.api.nvim_create_autocmd("LspDetach", {
			group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
			callback = function(event2)
				vim.lsp.buf.clear_references()
				vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event2.buf })
			end,
		})
	end
end

function M.setup_inlay_hints(event)
	local client = vim.lsp.get_client_by_id(event.data.client_id)
	if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end
		
		map("<leader>th", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
		end, "[T]oggle Inlay [H]ints")
	end
end

return M
