local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local keybinds = require 'core.keybinds'
local tab_bar = require 'core.tabbar'

-- font stuff & appearance customization
config.font_size = 10
config.font = wezterm.font 'JetBrains Mono'
config.line_height = 1.2
config.cell_width = 1
config.colors = {
    background = "#100f0e",
    foreground = "#DCD7BA",

    split = "#0d0c0c",

    cursor_bg = "#DCD7BA",

    tab_bar = {
        background = '#0d0c0c'
    },
}

-- cursor customization
config.cursor_blink_rate = 500
config.default_cursor_style = 'BlinkingBlock'

-- window stuff
config.window_decorations = 'NONE'
config.window_padding = { left= '0cell', right= '0cell', top= '0cell', bottom= '0.0cell', }
--config.window_background_opacity = 0.9
--[[ 
config.window_frame = {
  border_left_width = '0.3cell',
  border_right_width = '0.3cell',
  border_bottom_height = '0.15cell',
  border_left_color = '#050505',
  border_right_color = '#050505',
  border_bottom_color = '#050505',
}
]]--

-- window spec stuff
config.max_fps = 60
config.animation_fps = 1
config.prefer_egl = true

-- git bash stuff
config.default_prog = { 'C://Program Files//Git//bin//bash.exe' }
config.default_cwd = 'C://Users//jayco'
config.term = 'xterm-256color'

keybinds.apply_to_config(config)
tab_bar.apply_to_config(config)

return config
