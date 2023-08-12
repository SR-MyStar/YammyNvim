-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function require_autocmds(file)
  if file.extension == "lua" and file.name:sub(1, 1) ~= "_" then
    require(star.path.autocmds .. "." .. file.name)()
  end
end

for _, file in
  pairs(
    vim.fn.readdir(
      vim.fn.stdpath("config")
        .. "/lua/"
        .. string.gsub(star.path.autocmds, "%.", "/")
    )
  )
do
  require_autocmds(star.util.split_filename(file))
end
