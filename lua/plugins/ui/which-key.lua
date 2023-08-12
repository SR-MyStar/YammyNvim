local wk = require("which-key")

local function require_global_keymaps(file)
  local function load_keymap(keymap_raw_table)
    if type(keymap_raw_table[1]) ~= "table" then
      wk.register(keymap_raw_table.keys, keymap_raw_table.opts)
      return
    end
    for _, keymap_table in ipairs(keymap_raw_table) do
      load_keymap(keymap_table)
    end
  end

  if file.extension == "lua" and file.name:sub(1, 1) ~= "_" then
    local keymap_raw_table =
      require(star.path.global_keymaps .. "." .. file.name)
    load_keymap(keymap_raw_table)
  end
end

return {
  {
    "catppuccin",
    optional = true,
    opts = {
      integrations = { which_key = true },
    },
  },
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.plugins =
        vim.tbl_extend("force", opts.plugins or {}, { spelling = true })
      for _, file in
        pairs(
          vim.fn.readdir(
            vim.fn.stdpath("config")
              .. "/lua/"
              .. string.gsub(star.path.global_keymaps, "%.", "/")
          )
        )
      do
        require_global_keymaps(star.util.split_filename(file))
      end
    end,
  },
}
