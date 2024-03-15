return {
  "stevearc/conform.nvim",
  dependencies = "mason.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt", "beautysh" },
      shell = { "shfmt", "beautysh" },
      bash = { "shfmt", "beautysh" },
      csh = { "beautysh" },
      ksh = { "beautysh" },
      zsh = { "beautysh" },
      mksh = { "shfmt" },
      javascript = { "clang_format", "standardjs" },
      html = { "htmlbeautifier" },
    },
  },
}
