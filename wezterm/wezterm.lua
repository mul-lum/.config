local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local keybinds = require 'core.keybinds'
local tab_bar = require 'core.tabbar'

-- font stuff & appearance customization
config.font_size = 10
config.font = wezterm.font '0xProto Nerd Font'
config.line_height = 1.2
config.colors = {
    background = "#000000",
    foreground = "#ebdbb2",

    split = "#050505",

    cursor_bg = "#ebdbb2",

    tab_bar = {
        background = '#050505'
    },
}

-- cursor customization
config.cursor_blink_rate = 500
config.default_cursor_style = 'BlinkingBlock'

-- window stuff
config.window_decorations = 'NONE'
config.window_padding = { left= 10, right= 10, top= 10, bottom= 0, }
config.window_background_opacity = 0.9
config.window_frame = {
  border_left_width = '0.3cell',
  border_right_width = '0.3cell',
  border_bottom_height = '0.15cell',
  border_left_color = '#050505',
  border_right_color = '#050505',
  border_bottom_color = '#050505',
}

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
