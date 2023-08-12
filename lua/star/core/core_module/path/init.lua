---@class star.path
---@field Extras  star.path.Extras
---@field Plugins star.path.Plugins
local M = setmetatable({}, {
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. ".path." .. k)
    end
    return rawget(t, k)
  end,
})

M.config = "config"
M.global_keymaps = "config.keymaps"
M.autocmds = "config.autocmds"
M.options = "config.options"
M.apply_config = star_core .. ".apply_config"

return M
