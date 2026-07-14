return {
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		lazy = true,
		ft = { "go", "gomod" },
		opts = function()
			require("go").setup(opts)
			return {
				-- lsp_keymaps = false,
				-- other options
			}
		end,
		event = { "CmdLineEnter" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
}
