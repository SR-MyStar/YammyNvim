core_module = star_core .. ".core_module"

---@class star
---@field opt star.opt
---@field util star.util
---@field path star.path
star = setmetatable({}, {
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. "." .. k)
    end
    return rawget(t, k)
  end,
})
