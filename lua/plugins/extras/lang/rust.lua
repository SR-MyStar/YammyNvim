return {
  {
    "simrat39/rust-tools.nvim",
    lazy = true,
    opts = {
      tools = {
        inlay_hints = { auto = false },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    opts = {
      keywords = {
        TODO = {
          alt = { "todo", "unimplemented" },
        },
      },
      highlight = {
        pattern = { [[.*<(KEYWORDS)\s*:]], [[.*<(KEYWORDS)\s*!\(]] },
        comments_only = false,
      },
      search = { pattern = [=[\b(KEYWORDS)(:|!\()]=] },
    },
  },
}
