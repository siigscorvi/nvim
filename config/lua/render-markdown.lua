require('render-markdown').setup({
  enabled = true,
  file_types = { 'markdown' },
  pipe_table = { preset = 'round' },
  code = { sign = false },
  completions = { blink = { enabled = true } },
})
