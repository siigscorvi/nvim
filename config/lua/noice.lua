require("notify").setup({
  background_colour = "#000000",
})

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

vim.keymap.set("n", "<leader>nl", function() require("noice").cmd("last") end, { desc = "Noice: show last message in noice" })

vim.keymap.set("n", "<leader>nh", function() require("noice").cmd("history") end, { desc = "Noice: show message history in noice" })

vim.keymap.set("n", "<leader>nt", function() require("noice").cmd("telescope") end, { desc = "Noice: show noice in telescope" })

vim.keymap.set("n", "<leader><Del>", function() require("noice").cmd("dismiss") end, { desc = "Noice: dismiss noice messages" })
