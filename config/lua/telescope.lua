require('telescope').setup {
  pickers = {

  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    },
     file_browser = {
      hijack_netrw = true, -- disables netrw and use telescope-file-browser in its place
    },
    cmdline = {
      -- Adjust telescope picker size and layout
      picker = {
        layout_config = {
          width  = 120,
          height = 25,
        }
      },
      -- Adjust your mappings 
      mappings    = {
        complete      = '<Tab>',
        run_selection = '<C-CR>',
        run_input     = '<CR>',
      },
    },
  }
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' }) -- telescope grep
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescope buffers' }) -- buffers
vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' }) -- telescope help

vim.keymap.set("n", "<space>f", ":Telescope file_browser<CR>") -- files
vim.keymap.set("n", "<space>tc", ":Telescope file_browser path=%:p:h select_buffer=true<CR>") -- telescope current

vim.api.nvim_set_keymap('n', 'Q', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })
-- vim.keymap.set('n', '<leader>ts', ':Telescope luasnip<CR>', { noremap = true, desc = "luasnippets" }) -- telescope snippets
--- setup functions for telescope extensions:
require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")
require("telescope").load_extension("cmdline")
-- require("telescope").load_extension("luasnip")

