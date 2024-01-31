return {
  {
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
  },
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = {
      ensure_installed = { "clang-format" },
    },
  },
  {
    "stevearc/conform.nvim",
    dependencies = { "clangd_extensions.nvim", "mason.nvim" },
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        objcpp = { "clang_format" },
        cuda = { "clang_format" },
        proto = { "clang_format" },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    dependencies = "mason.nvim",
    opts = function(_, opts)
      opts.sources = vim.tbl_extend("force", opts.sources or {}, {
        require("null-ls").builtins.formatting.clang_format,
      })
    end,
  },
}
