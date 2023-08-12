local tabline = star.path.Plugins.Lualine.tabline

return {
  require(tabline .. ".Lualine_b.encoding"),
  require(tabline .. ".Lualine_b.fileformat"),
  require(tabline .. ".Lualine_b.filename"),
}
