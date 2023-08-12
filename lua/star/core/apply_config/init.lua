local if_then_else = star.util.if_then_else
local opt = star.opt
local path = star.path.apply_config

return {
  if_then_else(opt.border.enabled, {
    import = path .. ".border",
  }),
}
