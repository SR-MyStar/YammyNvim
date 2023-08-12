local Util = require("lazyvim.util")

return {
  "SR-Mystar/yazi.nvim",
  lazy = true,
  cmd = "Yazi",
  opts = {
    command_args = {
      open_dir = function(path)
        Util.terminal({}, {
          cwd = path,
          border = "single",
        })
      end,
      on_open = function()
        vim.keymap.set("t", "<esc>", "<esc>", { buffer = true, nowait = true })
        vim.keymap.set("t", "<c-h>", "<c-h>", { buffer = true, nowait = true })
        vim.keymap.set("t", "<c-j>", "<c-j>", { buffer = true, nowait = true })
        vim.keymap.set("t", "<c-k>", "<c-k>", { buffer = true, nowait = true })
        vim.keymap.set("t", "<c-l>", "<c-l>", { buffer = true, nowait = true })
      end,
    },
  },
  keys = {
    {
      "<leader>lf",
      mode = "n",
      function()
        require("yazi").open({ cwd = Util.root() })
      end,
      desc = "Yazi (root dir)",
    },
    {
      "<leader>lF",
      mode = "n",
      function()
        require("yazi").open()
      end,
      desc = "Yazi (cwd)",
    },
  },
}
