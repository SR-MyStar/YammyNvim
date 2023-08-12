---@class star.path.Extras
local M = {}

M = setmetatable({}, {
  __unm = function()
    return "plugins.extras_config"
  end,
})

M.coding = -M .. ".coding"
M.dap = -M .. ".dap"
M.editor = -M .. ".editor"
M.lang = -M .. ".lang"
M.lsp = -M .. ".lsp"
M.test = -M .. ".test"
M.ui = -M .. ".ui"
M.util = -M .. ".util"

return M
