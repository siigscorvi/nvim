require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff',
      { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' }, },
    },

    lualine_c = {
      'filename',
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },
      }
    },

    lualine_x = {
      { 'lsp_status', icon = '', ignore_lsp = {'ltex_plus', 'copilot'} },
      { 'copilot', show_colors = true, show_loading = true },
    },

    lualine_y = { 'encoding', 'fileformat', 'filetype' },
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
