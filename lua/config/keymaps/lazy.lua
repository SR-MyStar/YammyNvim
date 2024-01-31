local Util = require("lazyvim.util")

return {
  keys = {
    name = "lazy/yazi",
    ["l"] = { "<cmd>Lazy<cr>", "Lazy" },
    ["L"] = {
      function()
        Util.news.changelog()
      end,
      "LazyVim Changelog",
    },
  },
  opts = { mode = "n", prefix = "<leader>l" },
}
