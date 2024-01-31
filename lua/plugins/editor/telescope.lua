local Layout = require("nui.layout")
local TSLayout = require("telescope.pickers.layout")

local function make_popup(options)
  local popup = require("nui.popup")(options)
  ---@diagnostic disable-next-line: inject-field
  function popup.border:change_title(title)
    popup.border.set_text(popup.border, "top", title)
  end
  ---@diagnostic disable-next-line: param-type-mismatch
  return TSLayout.Window(popup)
end

return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { telescope = true },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    cmd = "Telescope",
    opts = {
      defaults = {
        layout_strategy = "flex",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            size = { width = "100%", height = "100%" },
          },
          vertical = {
            size = { width = "100%", height = "100%" },
          },
        },
        prompt_prefix = "  ",
        border = true,
        results_title = false,
        create_layout = function(picker)
          local results = make_popup({
            focusable = false,
            border = {
              style = {
                top = "",
                right = "│",
                bottom = "─",
                left = "│",
                top_left = "",
                top_right = "",
                bottom_right = "┘",
                bottom_left = "└",
              },
            },
          })
          local prompt = make_popup({
            enter = true,
            border = {
              style = {
                top = "─",
                right = "│",
                bottom = "",
                left = "│",
                top_left = "├",
                top_right = "┤",
                bottom_right = "",
                bottom_left = "",
              },
            },
          })
          local preview = make_popup({
            focusable = false,
            border = {
              style = {
                top = "─",
                right = "│",
                bottom = "",
                left = "│",
                top_left = "┌",
                top_right = "┐",
                bottom_right = "",
                bottom_left = "",
              },
              text = { top = picker.prompt_title, top_align = "center" },
            },
          })
          local layout = Layout(
            { relative = "editor", position = "50%", size = "90%" },
            Layout.Box({
              Layout.Box(preview, { size = "45%" }),
              Layout.Box(prompt, { size = 2 }),
              Layout.Box(results, { size = "55%" }),
            }, { dir = "col" })
          )
          ---@diagnostic disable-next-line: inject-field
          layout.results = results
          ---@diagnostic disable-next-line: inject-field
          layout.prompt = prompt
          ---@diagnostic disable-next-line: inject-field
          layout.preview = preview
          ---@diagnostic disable-next-line: param-type-mismatch
          return TSLayout(layout)
        end,
      },
    },
    keys = function(_, keys)
      keys = vim.list_extend(keys, {
        {
          "<leader>fi",
          function()
            require("telescope.builtin").builtin()
          end,
          desc = "Find Builtin",
        },
        { "<leader>i", "<leader>fi", desc = "Find Builtin", remap = true },
      })
    end,
  },
}
