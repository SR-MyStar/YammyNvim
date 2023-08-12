return {
  "nvimtools/none-ls.nvim",
  optional = true,
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = vim.tbl_extend("force", opts.sources or {}, {
      nls.builtins.diagnostics.shfmt,
    })
  end,
}
