require("trouble").setup({
  auto_close = true,
  auto_preview = true,
  auto_refresh = true,
})

require("todo-comments").setup({
  signs = false,
  keywords = {
    FIX = { icon = " ", color = "error",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning" },
    PERF = { icon = "󰓅 ", color = "hint",
      alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "HINT" } },
    TEST = { icon = " ", color = "#68a0b0" },
  },
})

vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {desc  = "Buffer Diagnostics (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {desc = "LSP Definitions  / references / ... (Trouble)" })
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", {desc  = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", {desc  = "Quickfix List (Trouble)" })

vim.keymap.set("n", "]t", function() require("todo-comments").jump_next() end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function() require("todo-comments").jump_prev() end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo filter = {tag = {TODO,FIX,FIXME}}<cr>", {desc  = "List all project todos in trouble" })
vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<cr>", {desc  = "List all project todos in telescope" })

