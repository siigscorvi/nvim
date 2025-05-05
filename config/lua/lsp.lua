--- keymaps after attach ---
vim.api.nvim_create_autocmd(
  "LspAttach",
  {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
      vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Lsp: go to definition" }))
      vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Lsp: hover" }))
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation,
        vim.tbl_extend("force", opts, { desc = "Lsp: go to implementation" }))
      vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition,
        vim.tbl_extend("force", opts, { desc = "Lsp: goto type definition" }))
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename,
        vim.tbl_extend("force", opts, { desc = "Lsp: rename symbol and all references" }))
      vim.keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action,
        vim.tbl_extend("force", opts, { desc = "Lsp: code action" }))
      vim.keymap.set("n", "gr", vim.lsp.buf.references,
        vim.tbl_extend("force", opts, { desc = "Lsp: list references of symbol in quickfix" }))

      vim.keymap.set("n", "<leader>bf", function()
        vim.lsp.buf.format({ async = true })
      end, vim.tbl_extend("force", opts, { desc = "Lsp: format buffer" }))

      vim.keymap.set("n", "<leader>od", function() --- or use build in keymap with <C-W>d
        vim.diagnostic.open_float({
          border = "rounded",
        })
      end, vim.tbl_extend("force", opts, { desc = "Lsp: open diagnostic in floating window" }))
    end,
  }
)

--- general diagnostic settings ---
vim.diagnostic.config({
  -- virtual_lines = true,
  virtual_text = true,
  underline = true,

  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '󰈸',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '󰍉',
    },
  },

})

--- setup servers with their config ---
local servers = {
  --- lua_ls
  lua_ls = {
    settings = {
      Lua = { diagnostics = { globals = { 'vim' } } }
    }
  },

  --- nixd
  nixd = {
    cmd = { "nixd" },
    settings = {
      nixd = {
        nixpkgs = { expr = "import <nixpkgs> { }", },
        formatting = { command = { "nixfmt" }, },
        options = {
          nixos = {
            expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.k-on.options',
          },
          home_manager = {
            expr = '(builtins.getFlake ("git+file://" + toString ./.)).homeConfigurations."ruixi@k-on".options',
          },
        },
      },
    },
  },
}

--- apply config and enable all servers ---
for server, opts in pairs(servers) do
  vim.lsp.config(server, opts)
  vim.lsp.enable(server)
end
