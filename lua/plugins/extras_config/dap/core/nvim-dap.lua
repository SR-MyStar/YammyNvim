return {
  {
    "stevearc/overseer.nvim",
    opts = { dap = true },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = "stevearc/overseer.nvim",
    opts = function(_, opts)
      require("dap.ext.vscode").json_decode = require("overseer.json").decode
    end,
  },
}
