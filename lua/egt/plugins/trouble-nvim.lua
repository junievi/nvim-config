return {
	{
		"folke/trouble.nvim",
		opts = {
			{
				icons = {
					indent = {
						middle = " ",
						last = " ",
						top = " ",
						ws = "│  ",
					},
				},
				modes = {
					symbols = {
						desc = "document symbols",
						mode = "lsp_document_symbols",
						focus = true,
						win = { position = "right", size = 1 },
						filter = {
							-- remove Package since luals uses it for control flow structures
							["not"] = { ft = "lua", kind = "Package" },
							any = {
								-- all symbol kinds for help / markdown files
								ft = { "help", "markdown" },
								-- default set of symbol kinds
								kind = {
									"Class",
									"Constructor",
									"Enum",
									"Field",
									"Function",
									"Interface",
									"Method",
									"Module",
									"Namespace",
									"Package",
									"Property",
									"Struct",
									"Trait",
								},
							},
						},
					},
					diagnostics = {
						focus = true,
						groups = {
							{ "filename", format = "{file_icon} {basename:Title} {count}" },
						},
					},
				},
			},
			mydiags = {
				mode = "diagnostics",
				filter = {
					any = {
						buf = 0,
						{
							severity = vim.diagnostic.severity.ERROR,
							function(item)
								return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
							end,
						},
					},
				},
			},
		},
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>xX",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>cs",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>cl",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "Location List (Trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>Trouble qflist toggle<cr>",
				desc = "Quickfix List (Trouble)",
			},
		},
	},
}
