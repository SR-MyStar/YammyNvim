---@class star.path.Plugins.Lualine
local M = {}

M = setmetatable({}, {
  __unm = function()
    return star.path.Plugins.ui .. ".lualine"
  end,
})
M.sections = -M .. ".sections"
M.tabline = -M .. ".tabline"
M.winbar = -M .. ".winbar"

return M
