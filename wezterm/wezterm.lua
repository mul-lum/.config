local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local keybinds = require 'core.keybinds'
-- local tab_bar = require 'core.tabbar'
config.enable_tab_bar = false

-- font stuff & appearance customization
config.font_size = 10
config.font = wezterm.font('0xProto Nerd Font', {weight = 'Light'})
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
config.window_background_opacity = 0.9

-- window spec stuff
config.max_fps = 120
config.animation_fps = 1
config.prefer_egl = true
config.front_end = "WebGpu"

-- git bash stuff
config.default_prog = { 'C://Program Files//Git//bin//bash.exe' }
config.default_cwd = 'C://Users//jayco'
config.term = 'xterm-256color'

keybinds.apply_to_config(config)
-- tab_bar.apply_to_config(config)

return config
