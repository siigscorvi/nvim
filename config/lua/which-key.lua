-- require("which-key").setup({})

vim.keymap.set('n', '<leader>?',
function () require("which-key").show({ global = true, }) end,
{ desc = 'Which-key: buffer local keymaps' })
