local winbar = star.path.Plugins.Lualine.winbar

return {
  require(winbar .. ".Lualine_c.Nvim-navic.filetype"),
  require(winbar .. ".Lualine_c.Nvim-navic.array"),
  require(winbar .. ".Lualine_c.Nvim-navic.nvim-navic"),
}
