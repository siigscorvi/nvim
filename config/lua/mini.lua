require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.surround').setup()

local bufremove = require("mini.bufremove")
bufremove.setup() -- TODO do i need to create a keymap?

require('mini.cursorword').setup()
require('mini.indentscope').setup()

local trails = require("mini.trailspace")
trails.setup()

vim.keymap.set("n", "<leader>bd", function() bufremove.unshow() end, { desc = "delete buffer" })

vim.keymap.set("n", "<leader>tr", function() trails.trim() end, { desc = "Trim all trailing whitespaces"})

vim.keymap.set("n", "<leader>tl", function() trails.trim_last_lines() end, { desc = "Trim all trailing empty lines"})
