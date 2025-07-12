require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff',
      { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' }, },
    },

    lualine_c = {
      'filename',
      {
        function ()
          local reg = vim.fn.reg_recording()
          if reg == "" then return "" end -- not recording
          return "rec @" .. reg
        end
      }
    },

    lualine_x = {
      { 'lsp_status', icon = '⚡', ignore_lsp = { 'ltex_plus' } }, -- 'copilot' used to be in ignore_lsp
      { show_colors = true, show_loading = true }, -- 'copilot' used to be first item in this list
    },

    lualine_y = { 'encoding', 'filetype' },
    lualine_z = { 'progress', 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
