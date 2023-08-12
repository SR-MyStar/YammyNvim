return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { neotree = true },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    opts = {
      window = { width = 27 },
    },
  },
}
