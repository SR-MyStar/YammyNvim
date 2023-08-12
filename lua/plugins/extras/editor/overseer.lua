require("which-key").register({
  name = "+overseer",
}, { mode = "n", prefix = "<leader>o" })

return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { overseer = true },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      float_opts = { border = "single" },
    },
  },
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      opts.right = opts.right or {}
      table.insert(opts.right, {
        title = "Overseer",
        ft = "OverseerList",
        open = function()
          require("overseer").open()
        end,
      })
    end,
  },
  {
    "stevearc/overseer.nvim",
    lazy = true,
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction",
      "OverseerClearCache",
    },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "akinsho/toggleterm.nvim",
    },
    opts = {
      strategy = { "toggleterm" },
      templates = { "builtin" },
      auto_detect_success_color = true,
      task_list = {
        default_detail = 1,
        max_width = { 100, 0.2 },
        min_width = { 40, 0.1 },
        width = nil,
        separator = "────────────────────────────────────────",
        direction = "left",
        bindings = {
          ["L"] = "IncreaseDetail",
          ["H"] = "DecreaseDetail",
        },
      },
      actions = {},
      form = {
        border = "single",
        zindex = 40,
        min_width = 80,
        max_width = 0.9,
        width = nil,
        min_height = 10,
        max_height = 0.9,
        height = nil,
        win_opts = {
          winblend = 0,
        },
      },
      task_launcher = {
        bindings = {
          i = {
            ["<C-s>"] = "Submit",
            ["<C-c>"] = "Cancel",
          },
          n = {
            ["<CR>"] = "Submit",
            ["<C-s>"] = "Submit",
            ["q"] = "Cancel",
            ["?"] = "ShowHelp",
          },
        },
      },
      task_editor = {
        bindings = {
          i = {
            ["<CR>"] = "NextOrSubmit",
            ["<C-s>"] = "Submit",
            ["<Tab>"] = "Next",
            ["<S-Tab>"] = "Prev",
            ["<C-c>"] = "Cancel",
          },
          n = {
            ["<CR>"] = "NextOrSubmit",
            ["<C-s>"] = "Submit",
            ["<Tab>"] = "Next",
            ["<S-Tab>"] = "Prev",
            ["q"] = "Cancel",
            ["?"] = "ShowHelp",
          },
        },
      },
      confirm = {
        border = "single",
        zindex = 40,
        min_width = 20,
        max_width = 0.5,
        width = nil,
        min_height = 6,
        max_height = 0.9,
        height = nil,
        win_opts = {
          winblend = 0,
        },
      },
      task_win = {
        padding = 2,
        border = "single",
        win_opts = {
          winblend = 0,
        },
      },
      component_aliases = {
        default = {
          { "display_duration", detail_level = 2 },
          "on_output_summarize",
          "on_exit_set_status",
          "on_complete_dispose",
        },
        default_vscode = {
          "default",
          "on_result_diagnostics",
          "on_result_diagnostics_quickfix",
        },
      },
      bundles = {
        save_task_opts = {
          bundleable = true,
        },
      },
      preload_components = {},
      -- Controls when the parameter prompt is shown when running a template
      --   always    Show when template has any params
      --   missing   Show when template has any params not explicitly passed in
      --   allow     Only show when a required param is missing
      --   avoid     Only show when a required param with no default value is missing
      --   never     Never show prompt (error if required param missing)
      default_template_prompt = "allow",
      template_timeout = 2000,
      template_cache_threshold = 100,
      log = {
        {
          type = "echo",
          level = vim.log.levels.WARN,
        },
        {
          type = "file",
          filename = "overseer.log",
          level = vim.log.levels.WARN,
        },
      },
    },
    keys = {
      {
        "<leader>ow",
        "<cmd>OverseerToggle<cr>",
        desc = "Task list",
      },
      {
        "<leader>oo",
        "<cmd>OverseerRun<cr>",
        desc = "Run task",
      },
      {
        "<leader>oq",
        "<cmd>OverseerQuickAction<cr>",
        desc = "Action recent task",
      },
      {
        "<leader>oi",
        "<cmd>OverseerInfo<cr>",
        desc = "Overseer Info",
      },
      {
        "<leader>ob",
        "<cmd>OverseerBuild<cr>",
        desc = "Task builder",
      },
      {
        "<leader>ot",
        "<cmd>OverseerTaskAction<cr>",
        desc = "Task action",
      },
      {
        "<leader>oc",
        "<cmd>OverseerClearCache<cr>",
        desc = "Clear cache",
      },
    },
  },
}
