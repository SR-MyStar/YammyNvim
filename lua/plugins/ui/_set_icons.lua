local ICONS = star.opt.icons

return {
  "LazyVim/LazyVim",
  opts = {
    icons = {
      dap = ICONS.dap,
      diagnostics = ICONS.diagnostics,
      git = ICONS.git,
      kinds = ICONS.kinds,
    },
  },
}
