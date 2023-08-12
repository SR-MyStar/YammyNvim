return star.opt.border.nvim_lspconfig
    and {
      "nvim-lspconfig",
      opts = function()
        require("lspconfig.ui.windows").default_options.border =
          star.opt.border_style
      end,
    }
  or {}
