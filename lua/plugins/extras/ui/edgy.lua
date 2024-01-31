return {
  "folke/edgy.nvim",
  opts = {
    top = {
      {
        ft = "terminal",
        size = { height = 0.3 },
        filter = function(buf, win)
          return vim.api.nvim_win_get_config(win).relative == ""
        end,
      },
    },
  },
}
