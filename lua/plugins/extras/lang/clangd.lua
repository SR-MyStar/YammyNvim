local lang = star.path.Extras.lang

return {
  { import = lang .. ".clangd.clangd-extensions" },
  { import = lang .. ".clangd.mason" },
  { import = lang .. ".clangd.conform" },
}
