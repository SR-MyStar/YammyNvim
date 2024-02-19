return {
  { "echasnovski/mini.comment", enabled = false },
  {
    "numToStr/Comment.nvim",
    lazy = true,
    opts = {
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    },
    keys = {
      "gcc",
      "gbc",

      "gcO",
      "gco",
      "gcA",
      { "gc", mode = "x" },
      { "gb", mode = "x" },
    },
  },
}
