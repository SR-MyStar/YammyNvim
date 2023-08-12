return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = {
        navic = { enabled = true, custom_bg = "lualine" },
      },
    },
  },
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    opts = {
      separator = "  ",
      highlight = true,
      depth_limit = 15,
      icons = require("lazyvim.config").icons.kinds,
    },
  },
}
