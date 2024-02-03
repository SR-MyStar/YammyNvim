return {
  keys = {
    ["<M-h>"] = { "^", "Goto the beginning of the line" },
    ["<M-l>"] = { "$", "Goto the end of the line" },
    ["<M-b>"] = { "%", "Cycle forward through results" },
  },
  opts = {
    mode = { "n", "o", "x" },
  },
}
