return {
  "p00f/clangd_extensions.nvim",
  lazy = true,
  ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  cmd = {
    "ClangdAST",
    "ClangdDisableInlayHints",
    "ClangdMemoryUsage",
    "ClangdSetInlayHints",
    "ClangdSwitchSourceHeader",
    "ClangdSymbolInfo",
    "ClangdToggleInlayHints",
    "ClangdTypeHierarchy",
  },
  opts = {
    inlay_hints = {
      inline = vim.fn.has("nvim-0.10") == 1,
      -- Options other than `highlight' and `priority' only work
      -- if `inline' is disabled
      -- Only show inlay hints for the current line
      only_current_line = false,
    },
    ast = star.opt.icons.clangd_ast,
  },
}
