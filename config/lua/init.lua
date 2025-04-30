vim.opt.nu = true
-- show relative line number in relation to cursor
vim.opt.relativenumber = true

-- set tab size to 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- smartindent and force autoindent
vim.opt.autoindent = true
vim.opt.smartindent = true

-- force linewrap
vim.opt.wrap = true

-- force enable 24 bit coloring
-- vim.set.termguicolors = true
-- disabled since vim will set it automatically if 24 bit coloring is available. Enable again if coloring doesnt work for some reason

-- keep 8 lines above and below cursor
vim.opt.scrolloff = 8
-- sign column (for example for git plugin, showing git signs) always on, for consistency
vim.opt.signcolumn = "yes"
-- add @ as a valid character in filenames (I don't really know why)
vim.opt.isfname:append("@-@")

-- time without input until swapped file is written to disk. this is safer
vim.opt.updatetime = 50

-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.background = "dark"

vim.loader.enable = true
