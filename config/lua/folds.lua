vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'open all folds' })
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'close all folds' })
vim.keymap.set('n', 'zK', require('ufo').peekFoldedLinesUnderCursor, { desc = 'peek folded lines under cursor' })

require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return { 'lsp', 'indent' }
    end
})
