return star.opt.border.nvim_cmp.documentation
    and {
      "nvim-cmp",
      opts = function(_, opts)
        local bordered = require("cmp.config.window").bordered
        opts.window.documentation = bordered(star.opt.border_style)
      end,
    }
  or {}
