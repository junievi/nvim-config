return {
	{
		"stevearc/oil.nvim",
		cmd = { "Oil" },
		dependencies = { "nvim-tree/nvim-web-devicons", { "nvim-mini/mini.icons", opts = {} } },
		lazy = false,
		keys = {
			{ "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
			{ "<leader>pv", "<CMD>Oil<CR>", desc = "Open parent directory" },
			{
				"gd",
				function()
					detail = not detail
					if detail then
						require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
					else
						require("oil").set_columns({ "icon" })
					end
				end,
				desc = "Toggle file detail view",
			},
		},
		opts = {
			view_options = {
				show_hidden = true,
			},
			use_default_keymaps = false,
			keymaps = {
				["g?"] = { "actions.show_help", mode = "n" },
				["<CR>"] = "actions.select",
				["_"] = { "actions.open_cwd", mode = "n" },
				["`"] = { "actions.cd", mode = "n" },
				["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
			},
			git = {
				add = function(path)
					return true
				end,
				mv = function(src_path, dest_path)
					return true
				end,
				rm = function(path)
					return true
				end,
			},
		},
	},
}
