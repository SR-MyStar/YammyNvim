return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  opts = {
    options = require(-star.path.Plugins.Lualine .. ".options"),
    -- opts.tabline = require(-star.path.Plugins.Lualine.. ".tabline")
    -- opts.winbar = require(-star.path.Plugins.Lualine.. ".winbar")
    sections = require(-star.path.Plugins.Lualine .. ".sections"),
    extensions = require(-star.path.Plugins.Lualine .. ".extensions"),
  },
}
