return {
  {
    "folke/edgy.nvim",
    opts = {
      animate = {
        enabled = false,
      },
    },
  },
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.top = vim.list_extend(opts.top or {}, {
        {
          ft = "terminal",
          size = { height = 0.3 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
      })
    end,
  },
}
