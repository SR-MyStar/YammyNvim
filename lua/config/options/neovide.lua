return function()
  if vim.g.neovide then
    -- 字体
    vim.opt.guifont =
      "JetBrainsMono Nerd Font,DFHannotateW7-A,Apple Color Emoji:h12.6"
    -- -- 行间距
    -- vim.opt.linespace = 2
    -- -- 缩放
    -- vim.g.neovide_scale_factor = 0.9
    -- 填充
    vim.g.neovide_padding_top = 25
    vim.g.neovide_padding_bottom = 25
    vim.g.neovide_padding_right = 25
    vim.g.neovide_padding_left = 25
    -- 没有空闲
    vim.g.neovide_no_idle = true
    -- 是否全屏
    vim.g.neovide_fullscreen = false
    -- 记住以前窗口的大小
    vim.g.neovide_remember_window_size = true
    -- 使用super键位,比如<cmd>
    vim.g.neovide_input_use_logo = true
    -- 开启Alt和Meta按键
    vim.g.neovide_input_macos_alt_is_meta = true
    -- 开启光标粒子
    vim.g.neovide_cursor_vfx_mode = "railgun"
    -- vim.g.neovide_cursor_vfx_mode = "ripple"
    vim.g.neovide_cursor_vfx_particle_density = 20.0
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    -- 设置刷新率
    vim.g.neovide_refresh_rate = 60
    -- 空闲刷新率
    vim.g.neovide_refresh_rate_idle = 60
    vim.g.neovide_background_color = "#999999"
    vim.g.neovide_transparency = 0.8
  end
end
