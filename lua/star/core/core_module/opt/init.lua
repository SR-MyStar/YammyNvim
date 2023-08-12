---@class star.opt
---@field icons  star.opt.icons
---@field border star.opt.border
local M = setmetatable({}, {
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. ".opt." .. k)
    end
    return rawget(t, k)
  end,
})

M.asyncrun = {
  args = "-mode=term -pos=bottom -rows=20",
}

M.border_style = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

return M
