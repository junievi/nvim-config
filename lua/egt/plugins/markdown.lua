return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = "markdown",
		keys = { { "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", desc = "Toggle [M]arkdown [P]review" } },
		build = ":call mkdp#util#install()",
	},
}
