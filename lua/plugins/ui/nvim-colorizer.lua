return {
  "norcalli/nvim-colorizer.lua",
  lazy = true,
  ft = { "css", "html" },
  config = function()
    require("colorizer").setup({ "html", "css" }, {
      RGB = true,
      RRGGBB = true,
      names = true,
      RRGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
    })
  end,
}
