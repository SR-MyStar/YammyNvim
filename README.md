# !!! This nvim dotfile is move to [YammyNvim](https://github.com/SR-MyStar/YammyNvim)
>
> [!WARNING]
>
> !!! This nvim dotfile is move to [YammyNvim](https://github.com/SR-MyStar/YammyNvim) !!!
>
> If you cloned this project, please execute this commands 👇:
>
> ```bash
> git remote add origin https://github.com/SR-MyStar/YammyNvim.git
> # or
> git remote add origin git@github.com:SR-MyStar/YammyNvim.git
> git pull -u origin main -f
> ```
>
> to set repository <https://github.com/SR-MyStar/YammyNvim> as your remote
> then you can update this project as normal.
>
> If you removed `.git` folder and edited more files long long ago, good luck!
>
## File Tree

```text

.
├──init.lua
├──lazyvim.json
├──lua
│  ├──config
│  │  ├──autocmds
│  │  │  └──indent.lua
│  │  ├──autocmds.lua
│  │  ├──keymaps
│  │  │  ├──goto.lua
│  │  │  ├──lazy.lua
│  │  │  └──terminal.lua
│  │  ├──keymaps.lua
│  │  ├──lazy.lua
│  │  ├──options
│  │  │  └──neovide.lua
│  │  └──options.lua
│  ├──plugins
│  │  ├──_disabled_plugins.lua
│  │  ├──_load_dirs.lua
│  │  ├──coding
│  │  │  ├──antonym.lua
│  │  │  ├──luasnip.lua
│  │  │  ├──mini_pairs.lua
│  │  │  ├──nvim-cmp.lua
│  │  │  └──vim-visual-multi.lua
│  │  ├──editor
│  │  │  ├──flash.lua
│  │  │  ├──neo-tree.lua
│  │  │  ├──neogit.lua
│  │  │  ├──nvim-bqf.lua
│  │  │  ├──suda.lua
│  │  │  ├──telescope.lua
│  │  │  ├──todo-comments.lua
│  │  │  └──yazi.lua
│  │  ├──extras
│  │  │  ├──coding
│  │  │  │  └──nvim-surround.lua
│  │  │  ├──dap
│  │  │  │  └──core.lua
│  │  │  ├──editor
│  │  │  │  └──aerial.lua
│  │  │  ├──lang
│  │  │  │  ├──clangd.lua
│  │  │  │  ├──markdown.lua
│  │  │  │  └──rust.lua
│  │  │  ├──overseer
│  │  │  │  ├──core.lua
│  │  │  │  ├──neotest.lua
│  │  │  │  ├──nvim-dap.lua
│  │  │  │  └──toggleterm.lua
│  │  │  ├──test
│  │  │  │  └──core.lua
│  │  │  ├──ui
│  │  │  │  ├──alpha.lua
│  │  │  │  └──edgy.lua
│  │  │  └──util
│  │  │     └──dot.lua
│  │  ├──lsp
│  │  │  ├──conform.lua
│  │  │  ├──mason.lua
│  │  │  ├──none-ls.lua
│  │  │  └──nvim-lspconfig.lua
│  │  ├──treesitter
│  │  │  ├──catppuccin.lua
│  │  │  ├──nvim-ts-context-commentstring.lua
│  │  │  └──treesj.lua
│  │  └──ui
│  │     ├──_set_icons.lua
│  │     ├──bufferline.lua
│  │     ├──cellular-automaton.lua
│  │     ├──colorscheme
│  │     │  ├──_set_colorscheme.lua
│  │     │  └──catppuccin.lua
│  │     ├──dashboard-nvim.lua
│  │     ├──dropbar.lua
│  │     ├──image.lua
│  │     ├──lualine
│  │     │  ├──extensions.lua
│  │     │  ├──options.lua
│  │     │  ├──sections
│  │     │  │  ├──Lualine_a
│  │     │  │  │  └──mode.lua
│  │     │  │  ├──lualine_a.lua
│  │     │  │  ├──Lualine_b
│  │     │  │  │  ├──dap.lua
│  │     │  │  │  ├──has_updates.lua
│  │     │  │  │  └──status
│  │     │  │  │     ├──command.lua
│  │     │  │  │     └──mode.lua
│  │     │  │  ├──lualine_b.lua
│  │     │  │  ├──Lualine_c
│  │     │  │  │  └──codeium.lua
│  │     │  │  ├──lualine_c.lua
│  │     │  │  ├──Lualine_x
│  │     │  │  │  └──rootdir.lua
│  │     │  │  ├──lualine_x.lua
│  │     │  │  ├──Lualine_y
│  │     │  │  │  └──line.lua
│  │     │  │  ├──lualine_y.lua
│  │     │  │  ├──Lualine_z
│  │     │  │  │  └──line_and_column.lua
│  │     │  │  └──lualine_z.lua
│  │     │  ├──sections.lua
│  │     │  ├──tabline
│  │     │  │  ├──Lualine_a
│  │     │  │  │  └──buffers.lua
│  │     │  │  ├──lualine_a.lua
│  │     │  │  ├──Lualine_b
│  │     │  │  │  ├──encoding.lua
│  │     │  │  │  ├──fileformat.lua
│  │     │  │  │  └──filename.lua
│  │     │  │  ├──lualine_b.lua
│  │     │  │  ├──Lualine_c
│  │     │  │  │  └──diagnostics.lua
│  │     │  │  ├──lualine_c.lua
│  │     │  │  ├──Lualine_x
│  │     │  │  │  └──diff.lua
│  │     │  │  ├──lualine_x.lua
│  │     │  │  ├──Lualine_y
│  │     │  │  │  └──branch.lua
│  │     │  │  ├──lualine_y.lua
│  │     │  │  ├──Lualine_z
│  │     │  │  │  └──tabs.lua
│  │     │  │  └──lualine_z.lua
│  │     │  ├──tabline.lua
│  │     │  ├──winbar
│  │     │  │  ├──lualine_a.lua
│  │     │  │  ├──lualine_b.lua
│  │     │  │  ├──Lualine_c
│  │     │  │  │  └──Nvim-navic
│  │     │  │  │     ├──array.lua
│  │     │  │  │     ├──filetype.lua
│  │     │  │  │     └──nvim-navic.lua
│  │     │  │  ├──lualine_c.lua
│  │     │  │  ├──lualine_d.lua
│  │     │  │  ├──Lualine_x
│  │     │  │  │  ├──diagnostics.lua
│  │     │  │  │  └──diff.lua
│  │     │  │  ├──lualine_x.lua
│  │     │  │  ├──lualine_y.lua
│  │     │  │  └──lualine_z.lua
│  │     │  └──winbar.lua
│  │     ├──lualine.lua
│  │     ├──noice.lua
│  │     ├──nvim-colorizer.lua
│  │     ├──nvim-navic.lua
│  │     ├──nvim-notify.lua
│  │     └──which-key.lua
│  └──star
│     ├──config
│     │  └──options.lua
│     ├──core
│     │  ├──apply_config
│     │  │  ├──border
│     │  │  │  ├──dropbar.lua
│     │  │  │  ├──gitsigns.lua
│     │  │  │  ├──mason.lua
│     │  │  │  ├──noice.lua
│     │  │  │  ├──none-ls.lua
│     │  │  │  ├──nvim-bqf.lua
│     │  │  │  ├──nvim-cmp
│     │  │  │  │  ├──completion.lua
│     │  │  │  │  ├──documentation.lua
│     │  │  │  │  └──init.lua
│     │  │  │  ├──nvim-lspconfig.lua
│     │  │  │  └──whick-key.lua
│     │  │  └──init.lua
│     │  ├──core_module
│     │  │  ├──opt
│     │  │  │  ├──border
│     │  │  │  │  ├──init.lua
│     │  │  │  │  └──nvim_cmp
│     │  │  │  │     └──init.lua
│     │  │  │  ├──icons
│     │  │  │  │  ├──clangd_ast
│     │  │  │  │  │  └──init.lua
│     │  │  │  │  └──init.lua
│     │  │  │  └──init.lua
│     │  │  ├──path
│     │  │  │  ├──init.lua
│     │  │  │  └──Plugins
│     │  │  │     ├──init.lua
│     │  │  │     └──Lualine
│     │  │  │        └──init.lua
│     │  │  └──util
│     │  │     └──init.lua
│     │  └──init.lua
│     └──init.lua
├──README.md
├──snippets
│  ├──lua.snippets
│  └──rust.snippets
└──stylua.toml
```
