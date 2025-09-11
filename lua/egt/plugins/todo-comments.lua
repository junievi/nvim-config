return {
	{ -- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		keys = {
			{
				"<leader>tq",
				"<cmd>TodoQuickFix<cr>",
				desc = "[T]odo [Q]uickfix",
			},
			{
				"<leader>tt",
				"<cmd>TodoTelescope<CR>",
				desc = "[T]odo [T]elescope",
			},
		},
		dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
		opts = { signs = true },
	},
}
