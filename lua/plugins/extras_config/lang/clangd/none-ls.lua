return {
  "nvimtools/none-ls.nvim",
  dependencies = "mason.nvim",
  opts = function(_, opts)
    opts.sources = vim.tbl_extend("force", opts.sources or {}, {
      require("null-ls").builtins.formatting.clang_format,
    })
  end,
}
