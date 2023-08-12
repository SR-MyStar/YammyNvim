---@class star.opt.icons.clangd_ast
local M = {}

M.role_icons = {
  type = star.opt.icons.kinds_no_last_space.Type,
  declaration = star.opt.icons.kinds_no_last_space.Declaration,
  expression = "",
  statement = star.opt.icons.kinds_no_last_space.Statement,
  specifier = star.opt.icons.kinds_no_last_space.Specifier,
  ["template argument"] = "",
}

M.kind_icons = {
  Compound = "",
  Recovery = "",
  TranslationUnit = "",
  PackExpansion = "",
  TemplateTypeParm = "",
  TemplateTemplateParm = "",
  TemplateParamObject = "",
}

return M
