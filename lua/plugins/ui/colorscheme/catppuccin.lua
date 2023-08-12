local function custom_highlights(C)
  local function is(color1, color2)
    if O.transparent_background then
      return color1
    else
      return color2
    end
  end
  local function reverse(highlight_group)
    return {
      fg = highlight_group.bg,
      bg = highlight_group.fg == C.base and is(C.none, highlight_group.fg)
        or highlight_group.fg,
    }
  end
  local highlights = {
    CmpItemAbbr = { fg = C.overlay2 },
    CmpItemMenu = { fg = C.overlay1 },
    CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
    CmpItemKindKeyword = { fg = C.base, bg = C.red },
    CmpItemKindText = { fg = C.base, bg = C.teal },
    CmpItemKindMethod = { fg = C.base, bg = C.blue },
    CmpItemKindConstructor = { fg = C.base, bg = C.blue },
    CmpItemKindFunction = { fg = C.base, bg = C.blue },
    CmpItemKindFolder = { fg = C.base, bg = C.blue },
    CmpItemKindModule = { fg = C.base, bg = C.blue },
    CmpItemKindConstant = { fg = C.base, bg = C.peach },
    CmpItemKindField = { fg = C.base, bg = C.green },
    CmpItemKindProperty = { fg = C.base, bg = C.green },
    CmpItemKindEnum = { fg = C.base, bg = C.green },
    CmpItemKindUnit = { fg = C.base, bg = C.green },
    CmpItemKindClass = { fg = C.base, bg = C.yellow },
    CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
    CmpItemKindFile = { fg = C.base, bg = C.blue },
    CmpItemKindInterface = { fg = C.base, bg = C.yellow },
    CmpItemKindColor = { fg = C.base, bg = C.red },
    CmpItemKindReference = { fg = C.base, bg = C.red },
    CmpItemKindEnumMember = { fg = C.base, bg = C.red },
    CmpItemKindStruct = { fg = C.base, bg = C.blue },
    CmpItemKindValue = { fg = C.base, bg = C.peach },
    CmpItemKindEvent = { fg = C.base, bg = C.blue },
    CmpItemKindOperator = { fg = C.base, bg = C.blue },
    CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
    CmpItemKindCopilot = { fg = C.base, bg = C.text },
    CmpItemKindNerdFont = { fg = C.base, bg = C.yellow },
    CmpItemKindEmoji = { fg = C.base, bg = C.yellow },
    CmpItemKindFonts = { fg = C.base, bg = C.blue },
    CmpItemKindCodeium = { fg = C.base, bg = C.text },

    FlashBackdrop = { fg = C.overlay0 },
    FlashCurrent = { fg = C.base, bg = C.peach },
    FlashMatch = { fg = C.base, bg = C.lavender },
    FlashLabel = { fg = C.base, bg = C.green, style = { "bold" } },

    TelescopePromptTitle = {
      fg = is(C.blue, C.base),
      bg = is(C.none, C.blue),
    },
    TelescopePromptBorder = {
      fg = is(C.none, C.blue),
      bg = is(C.blue, C.base),
    },
    TelescopeResultsBorder = { link = "TelescopePromptBorder" },
    TelescopeResultsTitle = { link = "TelescopePromptTitle" },
    TelescopeSelectionCaret = { fg = C.blue },
    TelescopeMatching = { fg = is(C.none, C.blue) },
    TelescopeNormal = { bg = is(C.none, C.mantle) },
    TelescopePromptPrefix = { fg = C.blue, bg = is(C.none, C.base) },
    TelescopePreviewBorder = {
      fg = is(C.none, C.green),
      bg = is(C.green, C.base),
    },
    TelescopePreviewTitle = {
      fg = is(C.green, C.base),
      bg = is(C.none, C.green),
    },
    TelescopeSelection = {
      fg = is(C.blue, C.text),
      bg = is(C.none, C.base),
      style = { "bold" },
    },

    DropBarIconUISeparator = { fg = C.text },
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
  opts = {
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",

    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    transparent_background = true,
    custom_highlights = custom_highlights,
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
  },
}
