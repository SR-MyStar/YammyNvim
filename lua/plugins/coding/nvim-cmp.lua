local ICONS = star.opt.icons

return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { cmp = true },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind-nvim",
      "chrisgrieser/cmp-nerdfont",
      "kdheepak/cmp-latex-symbols",
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0
          and vim.api
              .nvim_buf_get_lines(0, line - 1, line, true)[1]
              :sub(col, col)
              :match("%s")
            == nil
      end

      local luasnip = require("luasnip")
      local cmp = require("cmp")

      require("luasnip.loaders.from_snipmate").lazy_load()
      vim.opt.pumblend = 0
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "emoji" },
        { name = "nerdfont", priority = -90 },
        { name = "latex_symbols", option = { strategy = 0 } },
      }))
      opts.window = {
        completion = cmp.config.window,
        documentation = cmp.config.window,
      }
      vim.opt.pumheight = 15
      opts.preselect = cmp.PreselectMode.None
      opts.completion.completeopt = "noselect"
      opts.window.completion.col_offset = -3
      opts.window.completion.side_padding = 0
      opts.window.completion.max_width = 50
      opts.formatting = {
        fields = { "kind", "abbr", "menu" },

        format = function(entry, vim_item)
          local kind = require("lspkind").cmp_format({
            mode = "symbol_text",
            symbol_map = ICONS.kinds_no_last_space,
            maxwidth = 50,
          })(entry, vim_item)
          if entry.source.name == "emoji" then
            kind.kind = ICONS.kinds_no_last_space.Emoji
            kind.menu = "Emoji"
            vim_item.kind_hl_group = "CmpItemKindEmoji"
          elseif entry.source.name == "nerdfont" then
            kind.kind = ICONS.kinds_no_last_space.NerdFont
            kind.menu = "NerdFont"
            vim_item.kind_hl_group = "CmpItemKindNerdFont"
          else
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = (strings[1] or "")
            kind.menu = (strings[2] or "")
          end
          kind.kind = " " .. kind.kind .. " "
          kind.menu = "    [" .. kind.menu .. "]"

          return kind
        end,
      }

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() and cmp.get_active_entry() then
            cmp.confirm({ select = true })
          else
            fallback()
          end
        end, { "i", "c" }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<A-n>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.close()
          else
            cmp.complete()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
