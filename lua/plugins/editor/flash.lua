return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { flash = true },
    },
  },
  {
    "folke/flash.nvim",
    lazy = true,
    vscode = true,
    ---@type Flash.Config
    opts = {
      label = { uppercase = false },
      highlight = { backdrop = false },
    },
    modes = {
      char = { jump_labels = true },
    },
    keys = {
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter({
            label = {
              rainbow = { enabled = true },
            },
          })
        end,
        desc = "Flash Treesitter",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search({
            label = {
              rainbow = { enabled = true },
            },
          })
        end,
        desc = "Treesitter Search",
      },
      {
        "<leader>k",
        function()
          local col = vim.api.nvim_win_get_cursor(0)[2]
          require("flash").jump({
            labels = "jfkdls;a hg'urytieowpqnbvmc,x.z/",
            jump = { offset = col },
            search = {
              multi_window = false,
              mode = "search",
              max_length = 0,
            },
            label = {
              after = { 0, col },
            },
            highlight = { matches = false },
            pattern = "^",
          })
        end,
        mode = { "n", "x", "o" },
        desc = "Jump to a line",
      },
    },
  },
}
