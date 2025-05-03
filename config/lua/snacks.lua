local Snacks = require("snacks")
Snacks.setup({
  bigfile = { enabled = true},

  image = {
    enabled = true,
    doc = { inline = false, float = true, },
  },

  lazygit = { enabled = true, configure = true, },
})

vim.keymap.set("n", "<leader>lg", function() Snacks.lazygit() end, { desc = "open lazygit" })
