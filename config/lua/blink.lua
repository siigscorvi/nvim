require("blink.cmp").setup({
  -- C-space: Open menu or open docs if already open
  -- C-n/C-p or Up/Down: Select next/previous item
  -- C-e: Hide menu
  -- C-k: Toggle signature help (if signature.enabled = true)
  -- See :h blink-cmp-config-keymap for defining your own keymap
  keymap = {
    preset = 'default',
    ["<C-Z>"] = { "accept", "fallback" }, -- also let me accept with strg-z
    ["<C-C>"] = { "cancel", "fallback" }, -- also let me cancel with strg-c

    ['<A-1>'] = { function(cmp) cmp.accept({ index = 1 }) end },
    ['<A-2>'] = { function(cmp) cmp.accept({ index = 2 }) end },
    ['<A-3>'] = { function(cmp) cmp.accept({ index = 3 }) end },
    ['<A-4>'] = { function(cmp) cmp.accept({ index = 4 }) end },
    ['<A-5>'] = { function(cmp) cmp.accept({ index = 5 }) end },
    ['<A-6>'] = { function(cmp) cmp.accept({ index = 6 }) end },
    ['<A-7>'] = { function(cmp) cmp.accept({ index = 7 }) end },
    ['<A-8>'] = { function(cmp) cmp.accept({ index = 8 }) end },
    ['<A-9>'] = { function(cmp) cmp.accept({ index = 9 }) end },
    ['<A-0>'] = { function(cmp) cmp.accept({ index = 10 }) end },
  },

  appearance = {
    nerd_font_variant = 'mono'
  },

  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
    ghost_text = { enabled = true },

    menu = {
      draw = {
        columns = { { 'item_idx' }, { 'kind_icon' }, { 'label', 'label_description', gap = 1 } },

        components = {
          item_idx = {
            text = function(ctx) return ctx.idx == 10 and '0' or ctx.idx >= 10 and ' ' or tostring(ctx.idx) end,
          },

          kind_icon = {
            text = function(ctx)
              local lspkind = require("lspkind")
              local icon = ctx.kind_icon
              if vim.tbl_contains({ "Path" }, ctx.source_name) then
                local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                if dev_icon then
                    icon = dev_icon
                end
              else
                icon = require("lspkind").symbolic(ctx.kind, {
                    mode = "symbol",
                })
              end
              return icon .. ctx.icon_gap
            end,

            highlight = function(ctx)
              local hl = ctx.kind_hl
              if vim.tbl_contains({ "Path" }, ctx.source_name) then
                local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                if dev_icon then
                  hl = dev_hl
                end
              end
              return hl
            end,
          },

          kind = {
            highlight = function(ctx)
              local hl = ctx.kind_hl
              if vim.tbl_contains({ "Path" }, ctx.source_name) then
                local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
                if dev_icon then
                  hl = dev_hl
                end
              end
              return hl
            end,
          }
        }
      }
    },
  },

  signature = { enabled = true },

  sources = {
    default = {
      'path', 'buffer', 'cmdline', 'emoji', 'nerdfont', 'conventional_commits', -- 'lsp', 'snippets',
    },
    providers = {

      buffer = {
        enabled = function()
          return vim.tbl_contains( { "gitcommit", "markdown", "tex" }, vim.o.filetype)
        end,
        -- keep case of first char
        transform_items = function (a, items)
          local keyword = a.get_keyword()
          local correct, case
          if keyword:match('^%l') then
            correct = '^%u%l+$'
            case = string.lower
          elseif keyword:match('^%u') then
            correct = '^%l+$'
            case = string.upper
          else
            return items
          end

          -- avoid duplicates from the corrections
          local seen = {}
          local out = {}
          for _, item in ipairs(items) do
            local raw = item.insertText
            if raw:match(correct) then
              local text = case(raw:sub(1,1)) .. raw:sub(2)
              item.insertText = text
              item.label = text
            end
            if not seen[item.insertText] then
              seen[item.insertText] = true
              table.insert(out, item)
            end
          end
          return out
        end
      },

      emoji = {
        module = "blink-emoji",
        name = "Emoji",
        score_offset = 15,
        opts = { insert = true },
        enabled = function()
          return vim.tbl_contains( { "gitcommit", "markdown" }, vim.o.filetype)
        end,
      },

      nerdfont = {
        module = "blink-nerdfont",
        name = "Nerd Fonts",
        score_offset = 10,
        opts = { insert = true },
        enabled = function()
          return vim.tbl_contains( { "gitcommit", "markdown" }, vim.o.filetype)
        end,
      },

      conventional_commits = {
        module = 'blink-cmp-conventional-commits',
        name = 'Conventional Commits',
        score_offset = 20,
        enabled = function()
            return vim.bo.filetype == 'gitcommit'
        end,
        opts = {},
      },


    },
  },

  fuzzy = { implementation = "prefer_rust_with_warning" },

  cmdline = {
    keymap = {
      ['<Tab>'] = { 'show', 'accept' },
    },
    completion = { menu = { auto_show = true } },
  }

})
