-- when scrolling with <C-d> or <C-u>, cursor stays at its position
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when moving through search terms, cursor stays at its position
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to clipboard with Y" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace word under cursor in whole buffer" })

vim.keymap.set("v", "<C-h>", "<gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-l>", ">gv")


vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Snacks: open lazygit" })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
