local path = star.path.apply_config

return star.opt.border.nvim_cmp.enabled
    and {
      { import = path .. ".border.nvim-cmp.completion" },
      { import = path .. ".border.nvim-cmp.documentation" },
    }
  or {}
