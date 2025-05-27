local wezterm = require 'wezterm'
local keybinds = require 'core.keybinds'

local config = wezterm.config_builder()

-- font stuff & appearance customization
config.font_size = 10
config.font = wezterm.font '0xProto Nerd Font'
config.line_height = 1.2
config.colors = {
    background = "#171717",
    foreground = "#ebdbb2",

    cursor_bg = "#ebdbb2",

	tab_bar = {
		background = 'rgba(0,0,0,0)'
	}
}

-- cursor customization
config.cursor_blink_rate = 500
config.default_cursor_style = 'BlinkingBlock'

-- title bar
config.use_fancy_tab_bar = false
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
-- config.integrated_title_button_style = 'Windows'
-- config.integrated_title_buttons = {'Hide', 'Maximize', 'Close'}

-- window stuff
config.window_padding = { left= 10, right= 10, top= 10, bottom= 0, }
config.window_background_opacity = 0.9


-- window spec stuff
config.max_fps = 120
config.animation_fps = 1
config.prefer_egl = true
config.front_end = 'Software'

-- git bash stuff
config.default_prog = { 'C://Program Files//Git//bin//bash.exe', '-l' }
config.default_cwd = 'C://Users//jayco'
config.term = 'xterm-256color'

keybinds.apply_to_config(config)

return config
