return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { mason = true },
    },
  },
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = {
      ensure_installed = {
        "bash-language-server",
        "shellcheck",
        "shfmt",
      },
    },
  },
}
