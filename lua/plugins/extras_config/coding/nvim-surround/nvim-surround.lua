return {
  "kylechui/nvim-surround",
  lazy = true,
  opts = {
    keymaps = {
      insert = false,
      insert_line = false,
      normal = "gsa",
      normal_cur = "gsa<leader>",
      normal_line = "gsA",
      normal_cur_line = "gsA<leader>",
      visual = "gs",
      visual_line = "gS",
      delete = "gsd",
      change = "gsc",
      change_line = "gsC",
    },
  },
  keys = {
    { "gsa", desc = "Add a surrounding pair around a motion (normal mode)" },
    {
      "gsa<leader>",
      desc = "Add a surrounding pair around the current line (normal mode)",
    },
    {
      "gsA",
      desc = "Add a surrounding pair around a motion, on new lines (normal mode)",
    },
    {
      "gsA<leader>",
      desc = "Add a surrounding pair around the current line, on new lines (normal mode)",
    },
    {
      "gs",
      mode = "x",
      desc = "Add a surrounding pair around a visual selection",
    },
    {
      "gS",
      mode = "x",
      desc = "Add a surrounding pair around a visual selection, on new lines",
    },
    { "gsd", desc = "Delete a surrounding pair" },
    { "gsc", desc = "Change a surrounding pair" },
    {
      "gsC",
      desc = "Change a surrounding pair, putting replacements on new lines",
    },
  },
}
