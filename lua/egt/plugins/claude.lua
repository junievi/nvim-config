return {
	{
		"coder/claudecode.nvim",
		dependencies = { "folke/snacks.nvim" },
		config = true,
		opts = {
			split_width_percetage = 10.0,
		},
		keys = {
			{ "<leader>qa", nil, desc = "Claude" },
			{ "<leader>qc", "<cmd>ClaudeCode<cr>", desc = "Toggle [C]laude" },
			{ "<leader>qf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
			{ "<leader>qr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
			{ "<leader>qC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
			{ "<leader>qm", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
			{ "<leader>qb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
			{ "<leader>qs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
			{
				"<leader>qs",
				"<cmd>ClaudeCodeTreeAdd<cr>",
				desc = "Add file",
				ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
			},
			{ "<leader>qa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
			{ "<leader>qd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		},
	},
}
