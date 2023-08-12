local winbar = star.path.Plugins.Lualine.winbar

return {
  require(winbar .. ".Lualine_x.diagnostics"),
  require(winbar .. ".Lualine_x.diff"),
}
