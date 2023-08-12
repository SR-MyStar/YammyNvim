---@class star.opt.border
---@field nvim_cmp star.opt.border.nvim_cmp
local M = setmetatable({}, {
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. ".opt.border." .. k)
    end
    return rawget(t, k)
  end,
})

M.enabled = true
M.which_key = true
M.gitsigns = true
M.nvim_lspconfig = true
M.none_ls = true
M.mason = true
M.noice = true
M.dropbar = true
M.nvim_bqf = true

return M
