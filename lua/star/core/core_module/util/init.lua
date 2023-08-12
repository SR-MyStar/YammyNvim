---@class star.util
local M = {}

---Split a filename into name and extension
---
---# Example
---
---```lua
---require("foo.bar":split_filename())
---```
---
---@param file string
---@return { name: string, extension: string }
function M.split_filename(file)
  return {
    name = file:match("(.+)%."),
    extension = file:match(".+%.(%w+)$"),
  }
end

---Ternary conditional operator
---
---# Example
---
---```lua
---print(star.util.ternary(true, "a", "b"))
---```
---
---@param condition any
---@param a?        any
---@param b?        any
---@return any
function M.if_then_else(condition, a, b)
  if condition then
    return a
  else
    return b
  end
end

return M
