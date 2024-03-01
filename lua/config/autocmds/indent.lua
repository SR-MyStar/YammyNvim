return function()
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rust", "hyprlang", "kdl" },
    callback = function(event)
      vim.bo[event.buf].tabstop = 4
      vim.bo[event.buf].shiftwidth = 4
    end,
  })
end
