local opts = {
  compile_path = vim.fn.stdpath("cache") .. "/catppuccin",

  term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
  transparent_background = true,
  integrations = {
    gitsigns = true,
    illuminate = true,
    notify = true,
    semantic_tokens = true,
    indent_blankline = {
      enabled = true,
      scope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text
      colored_indent_levels = false,
    },
    lsp_trouble = true,
    mini = {
      enabled = true,
      indentscope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text
    },
  },
}

function opts.custom_highlights(c)
  local function is(color1, color2)
    if opts.transparent_background then
      return color1
    else
      return color2
    end
  end
  local function reverse(highlight_group)
    return {
      fg = highlight_group.bg,
      bg = highlight_group.fg == c.base and is(c.none, highlight_group.fg)
        or highlight_group.fg,
    }
  end
  local highlights = {
    CmpItemAbbr = { fg = c.overlay2 },
    CmpItemMenu = { fg = c.overlay1 },
    CmpItemKindSnippet = { fg = c.base, bg = c.mauve },
    CmpItemKindKeyword = { fg = c.base, bg = c.red },
    CmpItemKindText = { fg = c.base, bg = c.teal },
    CmpItemKindMethod = { fg = c.base, bg = c.blue },
    CmpItemKindConstructor = { fg = c.base, bg = c.blue },
    CmpItemKindFunction = { fg = c.base, bg = c.blue },
    CmpItemKindFolder = { fg = c.base, bg = c.blue },
    CmpItemKindModule = { fg = c.base, bg = c.blue },
    CmpItemKindConstant = { fg = c.base, bg = c.peach },
    CmpItemKindField = { fg = c.base, bg = c.green },
    CmpItemKindProperty = { fg = c.base, bg = c.green },
    CmpItemKindEnum = { fg = c.base, bg = c.green },
    CmpItemKindUnit = { fg = c.base, bg = c.green },
    CmpItemKindClass = { fg = c.base, bg = c.yellow },
    CmpItemKindVariable = { fg = c.base, bg = c.flamingo },
    CmpItemKindFile = { fg = c.base, bg = c.blue },
    CmpItemKindInterface = { fg = c.base, bg = c.yellow },
    CmpItemKindColor = { fg = c.base, bg = c.red },
    CmpItemKindReference = { fg = c.base, bg = c.red },
    CmpItemKindEnumMember = { fg = c.base, bg = c.red },
    CmpItemKindStruct = { fg = c.base, bg = c.blue },
    CmpItemKindValue = { fg = c.base, bg = c.peach },
    CmpItemKindEvent = { fg = c.base, bg = c.blue },
    CmpItemKindOperator = { fg = c.base, bg = c.blue },
    CmpItemKindTypeParameter = { fg = c.base, bg = c.blue },
    CmpItemKindCopilot = { fg = c.base, bg = c.text },
    CmpItemKindNerdFont = { fg = c.base, bg = c.yellow },
    CmpItemKindEmoji = { fg = c.base, bg = c.yellow },
    CmpItemKindFonts = { fg = c.base, bg = c.blue },
    CmpItemKindCodeium = { fg = c.base, bg = c.text },

    FlashBackdrop = { fg = c.overlay0 },
    FlashCurrent = { fg = c.base, bg = c.peach },
    FlashMatch = { fg = c.base, bg = c.lavender },
    FlashLabel = { fg = c.base, bg = c.green, style = { "bold" } },

    TelescopePromptTitle = {
      fg = is(c.blue, c.base),
      bg = is(c.none, c.blue),
    },
    TelescopePromptBorder = {
      fg = is(c.none, c.blue),
      bg = is(c.blue, c.base),
    },
    TelescopeResultsBorder = { link = "TelescopePromptBorder" },
    TelescopeResultsTitle = { link = "TelescopePromptTitle" },
    TelescopeSelectionCaret = { fg = c.blue },
    TelescopeMatching = { fg = is(c.none, c.blue) },
    TelescopeNormal = { bg = is(c.none, c.mantle) },
    TelescopePromptPrefix = { fg = c.blue, bg = is(c.none, c.base) },
    TelescopePreviewBorder = {
      fg = is(c.none, c.green),
      bg = is(c.green, c.base),
    },
    TelescopePreviewTitle = {
      fg = is(c.green, c.base),
      bg = is(c.none, c.green),
    },
    TelescopeSelection = {
      fg = is(c.blue, c.text),
      bg = is(c.none, c.base),
      style = { "bold" },
    },

    DropBarIconUISeparator = { fg = c.text },
  }
  highlights.DropBarIconKindDeclaration = reverse(highlights.CmpItemKindSnippet)
  highlights.DropBarIconKindIdentifier = reverse(highlights.CmpItemKindVariable)
  highlights.DropBarIconKindPackage = reverse(highlights.CmpItemKindModule)
  highlights.DropBarIconKindKeyword = reverse(highlights.CmpItemKindKeyword)
  highlights.DropBarIconKindType = reverse(highlights.CmpItemKindClass)
  highlights.DropBarIconKindText = reverse(highlights.CmpItemKindText)
  highlights.DropBarIconKindMethod = reverse(highlights.CmpItemKindMethod)
  highlights.DropBarIconKindConstructor =
    reverse(highlights.CmpItemKindConstructor)
  highlights.DropBarIconKindFunction = reverse(highlights.CmpItemKindFunction)
  highlights.DropBarIconKindFolder = reverse(highlights.CmpItemKindFolder)
  highlights.DropBarIconKindModule = reverse(highlights.CmpItemKindModule)
  highlights.DropBarIconKindConstant = reverse(highlights.CmpItemKindConstant)
  highlights.DropBarIconKindField = reverse(highlights.CmpItemKindField)
  highlights.DropBarIconKindProperty = reverse(highlights.CmpItemKindProperty)
  highlights.DropBarIconKindEnum = reverse(highlights.CmpItemKindEnum)
  highlights.DropBarIconKindUnit = reverse(highlights.CmpItemKindUnit)
  highlights.DropBarIconKindClass = reverse(highlights.CmpItemKindClass)
  highlights.DropBarIconKindVariable = reverse(highlights.CmpItemKindVariable)
  highlights.DropBarIconKindFile = reverse(highlights.CmpItemKindFile)
  highlights.DropBarIconKindInterface = reverse(highlights.CmpItemKindInterface)
  highlights.DropBarIconKindColor = reverse(highlights.CmpItemKindColor)
  highlights.DropBarIconKindReference = reverse(highlights.CmpItemKindReference)
  highlights.DropBarIconKindEnumMember =
    reverse(highlights.CmpItemKindEnumMember)
  highlights.DropBarIconKindStruct = reverse(highlights.CmpItemKindStruct)
  highlights.DropBarIconKindValue = reverse(highlights.CmpItemKindValue)
  highlights.DropBarIconKindEvent = reverse(highlights.CmpItemKindEvent)
  highlights.DropBarIconKindOperator = reverse(highlights.CmpItemKindOperator)
  highlights.DropBarIconKindTypeParameter =
    reverse(highlights.CmpItemKindTypeParameter)
  highlights.DropBarIconKindCopilot = reverse(highlights.CmpItemKindCopilot)
  highlights.DropBarIconKindCodeium = reverse(highlights.CmpItemKindCodeium)
  return highlights
end

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  priority = 1000,
  opts = opts,
}
