![231224_07h42m10s_screenshot](https://github.com/SR-MyStar/MyNeovimDots/assets/139795416/4cc0a02c-9d84-47ee-a3d0-d320c3a4db53)
![231224_07h42m48s_screenshot](https://github.com/SR-MyStar/MyNeovimDots/assets/139795416/851f8c8e-ec93-465c-976a-c3ff0aeae134)

# File Tree (Last uptime: 2024-01-12 20:53)

```
.
├──init.lua
├──lazy-lock.json
├──lazyvim.json
├──lua
│  ├──_env.lua
│  ├──config
│  │  ├──autocmds
│  │  │  ├──_IME_switching.lua
│  │  │  ├──c.lua
│  │  │  ├──cpp.lua
│  │  │  ├──lua.lua
│  │  │  ├──run_file
│  │  │  │  ├──run_c_file.lua
│  │  │  │  ├──run_cpp_file.lua
│  │  │  │  └──run_rust_file.lua
│  │  │  ├──rust.lua
│  │  │  └──test_file
│  │  │     └──test_rust_file.lua
│  │  ├──autocmds.lua
│  │  ├──keymaps
│  │  │  └──terminal.lua
│  │  ├──keymaps.lua
│  │  ├──lazy.lua
│  │  ├──options
│  │  │  ├──disable_relativenumber.lua
│  │  │  ├──neovide.lua
│  │  │  └──shiftwidth.lua
│  │  └──options.lua
│  ├──ICONS.lua
│  └──plugins
│     ├──_disabled_plugins.lua
│     ├──_load_dirs.lua
│     ├──coding
│     │  ├──asyncrun.lua
│     │  ├──luasnip.lua
│     │  ├──mini_pairs.lua
│     │  ├──nvim-cmp.lua
│     │  └──vim-visual-multi.lua
│     ├──editor
│     │  ├──cellular-automaton.lua
│     │  ├──flash.lua
│     │  ├──neo-tree.lua
│     │  ├──nvim-bqt.lua
│     │  ├──telescope.lua
│     │  ├──todo-comments.lua
│     │  ├──trouble.lua
│     │  └──yazi.lua
│     ├──extras
│     │  ├──coding
│     │  │  ├──codeium.lua
│     │  │  └──nvim-surround.lua
│     │  ├──dap
│     │  │  ├──core.lua
│     │  │  └──nlua.lua
│     │  ├──editor
│     │  │  └──aerial.lua
│     │  ├──lang
│     │  │  ├──clangd.lua
│     │  │  ├──cmake.lua
│     │  │  ├──json.lua
│     │  │  ├──markdown.lua
│     │  │  └──rust.lua
│     │  ├──lsp
│     │  │  └──none-ls.lua
│     │  ├──test
│     │  │  └──core.lua
│     │  ├──ui
│     │  │  ├──alpha.lua
│     │  │  └──edgy.lua
│     │  └──util
│     │     ├──dot.lua
│     │     └──project.lua
│     ├──extras_config
│     │  ├──coding
│     │  │  └──nvim-surround
│     │  │     ├──mini_surround.lua
│     │  │     └──nvim-surround.lua
│     │  ├──dap
│     │  │  └──core
│     │  │     └──catppuccin.lua
│     │  ├──editor
│     │  │  └──aerial
│     │  │     └──catppuccin.lua
│     │  ├──lang
│     │  │  ├──clangd
│     │  │  │  ├──clangd-extensions.lua
│     │  │  │  ├──conform.lua
│     │  │  │  ├──mason.lua
│     │  │  │  └──none-ls.lua
│     │  │  └──rust
│     │  │     └──rust-tools.lua
│     │  ├──test
│     │  │  └──core
│     │  │     └──catppuccin.lua
│     │  ├──ui
│     │  │  └──alpha
│     │  │     ├──alpha-nvim.lua
│     │  │     └──catppuccin.lua
│     │  └──util
│     │     └──dot
│     │        └──nvim-treesitter.lua
│     ├──lsp
│     │  ├──conform.lua
│     │  ├──mason.lua
│     │  ├──none.lua
│     │  └──nvim-lspconfig.lua
│     ├──treesitter
│     │  ├──catppuccin.lua
│     │  ├──nvim-ts-context-commentstring.lua
│     │  └──treesj.lua
│     └──ui
│        ├──_add_border.lua
│        ├──_set_icons.lua
│        ├──bufferline.lua
│        ├──colorizer.lua
│        ├──colorscheme
│        │  ├──_set_colorscheme.lua
│        │  └──catppuccin.lua
│        ├──dashboard-nvim.lua
│        ├──dropbar.lua
│        ├──lualine
│        │  ├──extensions.lua
│        │  ├──options.lua
│        │  ├──sections
│        │  │  ├──Lualine_a
│        │  │  │  └──mode.lua
│        │  │  ├──lualine_a.lua
│        │  │  ├──Lualine_b
│        │  │  │  ├──dap.lua
│        │  │  │  ├──has_updates.lua
│        │  │  │  └──status
│        │  │  │     ├──command.lua
│        │  │  │     └──mode.lua
│        │  │  ├──lualine_b.lua
│        │  │  ├──Lualine_c
│        │  │  │  └──codeium.lua
│        │  │  ├──lualine_c.lua
│        │  │  ├──Lualine_x
│        │  │  │  └──rootdir.lua
│        │  │  ├──lualine_x.lua
│        │  │  ├──Lualine_y
│        │  │  │  └──line.lua
│        │  │  ├──lualine_y.lua
│        │  │  ├──Lualine_z
│        │  │  │  └──line_and_column.lua
│        │  │  └──lualine_z.lua
│        │  ├──sections.lua
│        │  ├──tabline
│        │  │  ├──Lualine_a
│        │  │  │  └──buffers.lua
│        │  │  ├──lualine_a.lua
│        │  │  ├──Lualine_b
│        │  │  │  ├──encoding.lua
│        │  │  │  ├──fileformat.lua
│        │  │  │  └──filename.lua
│        │  │  ├──lualine_b.lua
│        │  │  ├──Lualine_c
│        │  │  │  └──diagnostics.lua
│        │  │  ├──lualine_c.lua
│        │  │  ├──Lualine_x
│        │  │  │  └──diff.lua
│        │  │  ├──lualine_x.lua
│        │  │  ├──Lualine_y
│        │  │  │  └──branch.lua
│        │  │  ├──lualine_y.lua
│        │  │  ├──Lualine_z
│        │  │  │  └──tabs.lua
│        │  │  └──lualine_z.lua
│        │  ├──tabline.lua
│        │  ├──winbar
│        │  │  ├──lualine_a.lua
│        │  │  ├──lualine_b.lua
│        │  │  ├──Lualine_c
│        │  │  │  └──Nvim-navic
│        │  │  │     ├──array.lua
│        │  │  │     ├──filetype.lua
│        │  │  │     └──nvim-navic.lua
│        │  │  ├──lualine_c.lua
│        │  │  ├──lualine_d.lua
│        │  │  ├──Lualine_x
│        │  │  │  ├──diagnostics.lua
│        │  │  │  └──diff.lua
│        │  │  ├──lualine_x.lua
│        │  │  ├──lualine_y.lua
│        │  │  └──lualine_z.lua
│        │  └──winbar.lua
│        ├──lualine.lua
│        ├──noice.lua
│        ├──nvim-navic.lua
│        └──which-key.lua
├──neoconf.json
├──README.md
└──stylua.toml
```
