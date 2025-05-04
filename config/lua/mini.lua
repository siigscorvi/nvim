require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.splitjoin').setup()
require('mini.surround').setup()

local bufremove = require("mini.bufremove")
bufremove.setup() -- TODO do i need to create a keymap?

require('mini.cursorword').setup()

vim.api.nvim_set_hl(0, 'MiniCursorword', {
  underline = false,
  bg        = '#504945',
})
vim.api.nvim_set_hl(0, 'MiniCursorwordCurrent', {
  underline = false,
  bg        = '#504945',
})

require('mini.indentscope').setup()

local trails = require("mini.trailspace")
trails.setup()

vim.keymap.set("n", "<leader>bd", function() bufremove.unshow() end, { desc = "Mini: delete buffer" })

vim.keymap.set("n", "<leader>tr", function() trails.trim() end, { desc = "Mini: Trim all trailing whitespaces"})

vim.keymap.set("n", "<leader>tl", function() trails.trim_last_lines() end, { desc = "Mini: Trim all trailing empty lines"})



-- requiring harpoon here as a quickfix for the loading problems
local harpoon = require('harpoon')
harpoon:setup({})

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon: add buffer to list" })
vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: show harpoon menu" })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: select 1st item in harpoon list" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: select 2nd item in harpoon list" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: select 3rd item in harpoon list" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: select 4th item in harpoon list" })
