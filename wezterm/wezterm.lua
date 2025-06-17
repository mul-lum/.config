local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local keybinds = require 'core.keybinds'
local tab_bar = require 'core.tabbar'

-- font stuff & appearance customization
config.font_size = 10
config.font = wezterm.font 'JetBrains Mono'
config.line_height = 1.2
config.colors = {
    background = "#000000",
    foreground = "#ffffff",

    split = "#171717",

    cursor_bg = "#ffffff",

    tab_bar = {
        background = '#171717'
    },
}

-- cursor customization
config.cursor_blink_rate = 500
config.default_cursor_style = 'BlinkingBlock'

-- window stuff
config.window_decorations = 'NONE'
config.window_padding = {left = '1cell', right= '1cell', top= '0.5cell', bottom = '0.5cell'}

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
