-- Set <space> as the leader key. Always happens first
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- My Nerd font, for fun icons
vim.opt.guifont = "Inconsolata"
vim.g.have_nerd_font = true

-- Ensure diagnostics are active for LSP purposes
vim.g["diagnostics_active"] = true

-- Require my various configurations, keymaps and autocommands
require("egt.opts")
require("egt.keymaps")
require("egt.auto")
require("egt.filetypes")
-- see https://github.com/folke/lazy.nvim
require("egt.lazy")
require("egt.globals")
