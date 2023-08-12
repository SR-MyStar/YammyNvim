---@class star.opt.icons
---@field clangd_ast star.opt.icons.clangd_ast
local M = setmetatable({}, {
  __index = function(t, k)
    if not rawget(t, k) then
      t[k] = require(core_module .. ".opt.icons." .. k)
    end
    return rawget(t, k)
  end,
})

M.dap = {
  Stopped = {
    "󰁕 ",
    "DiagnosticWarn",
    "DapStoppedLine",
  },
  Breakpoint = " ",
  BreakpointCondition = "󰘥 ",
  BreakpointRejected = {
    " ",
    "DiagnosticError",
  },
  LogPoint = ".>",
}

M.diagnostics = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
}

M.git = {
  added = " ",
  modified = " ",
  removed = " ",
}

M.kinds_no_last_space = {
  Array = "",
  Boolean = "",
  BreakStatement = "󰙧",
  Call = "󰃷",
  CaseStatement = "󱃙",
  Class = "󰠱",
  Codeium = "󰘦",
  Color = "",
  Constant = "󰏿",
  Constructor = "",
  ContinueStatement = "→",
  Copilot = "",
  Declaration = "󰙠",
  Delete = "󰩺",
  DoStatement = "󰑖",
  Eent = "",
  Emoji = "󰇴",
  Enum = "",
  EnumMember = "",
  Event = "",
  Field = "",
  File = "󰧮",
  Folder = "",
  Fonts = "",
  ForStatement = "󰑖",
  Function = "󰡱",
  H1Marker = "󰉫",
  H2Marker = "󰉬",
  H3Marker = "󰉭",
  H4Marker = "󰉮",
  H5Marker = "󰉯",
  H6Marker = "󰉰",
  Identifier = "󰀫",
  IfStatement = "󰇉",
  Interface = "",
  Key = "",
  Keyword = "󰌋",
  List = "",
  Log = "󰦪",
  Lsp = "",
  Macro = "󰁌",
  MarkdownH1 = "󰉫",
  MarkdownH2 = "󰉬",
  MarkdownH3 = "󰉭",
  MarkdownH4 = "󰉮",
  MarkdownH5 = "󰉯",
  MarkdownH6 = "󰉰",
  Method = "󰆧",
  Module = "󰏗",
  Namespace = "",
  NerdFont = "",
  Null = "󰢤",
  Number = "",
  Object = "",
  Operator = "󰆕",
  Package = "",
  Pair = "",
  Property = "󰜢",
  Reference = "",
  Regex = "",
  Repeat = "󰑖",
  Scope = "",
  Snippet = "",
  Specifier = "󰦪",
  Statement = "",
  String = "",
  Struct = "",
  SwitchStatement = "󰺟",
  Text = "󰧭",
  Type = "",
  TypeParameter = "󰅲",
  Unit = "󰑭",
  Value = "󰎠",
  Variable = "󰂡",
  WhileStatement = "󰑖",
}

M.kinds = {}
for k, v in pairs(M.kinds_no_last_space) do
  M.kinds[k] = v .. " "
end

return M
