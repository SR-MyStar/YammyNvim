---@class star.path.Plugins
---@field Lualine star.path.Plugins.Lualine
local M = setmetatable({}, {
  __unm = function()
    return "plugins"
  end,
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. ".path.Plugins." .. k)
    end
    return rawget(t, k)
  end,
})

M.coding = -M .. ".coding"
M.editor = -M .. ".editor"
M.lsp = -M .. ".lsp"
M.treesitter = -M .. ".treesitter"
M.ui = -M .. ".ui"
M.colorscheme = -M .. ".ui.colorscheme"

return M
