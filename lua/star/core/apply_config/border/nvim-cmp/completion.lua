return star.opt.border.nvim_cmp.completion
    and {
      "nvim-cmp",
      opts = function(_, opts)
        local bordered = require("cmp.config.window").bordered
        opts.window.completion = bordered(star.opt.border_style)
        opts.window.completion.scrollbar = false
      end,
    }
  or {}
