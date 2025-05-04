vim.api.nvim_create_autocmd(
  "LspAttach",
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
		callback = function(ev)
			vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc" -- Enable completion triggered by <c-x><c-o>

			-- See `:help vim.lsp.*` for documentation on any of the below functions
			local opts = { buffer = ev.buf }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Lsp: go to definition" })
			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, { desc = "Lsp: hover" })
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Lsp: go to implementation" })
			vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, { desc = "Lsp: goto type definition" })
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Lsp: rename symbol and all references" })
			vim.keymap.set({ "n", "v" }, "<leader>a", vim.lsp.buf.code_action, { desc = "Lsp: code action" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Lsp: list references of symbol in quickfix" })

			vim.keymap.set("n", "<leader>bf",function()
				vim.lsp.buf.format({ async = true })
			end, { desc = "Lsp: format buffer" })

			vim.keymap.set("n", "<leader>od", function()
				vim.diagnostic.open_float({
					border = "rounded",
				})
			end, { desc = "Lsp: open diagnostic in floating window" })

		end,
	}
)

vim.lsp.enable('lua_ls')
