local wezterm = require('wezterm')
local tab_bar = {}

tab_bar.options = {
    enable_tab_bar = false,
    -- tab_max_width = 20,
    -- use_fancy_tab_bar = false,
    -- tab_bar_at_bottom = true,
    -- hide_tab_bar_if_only_one_tab = true,
    -- show_new_tab_button_in_tab_bar = false,

    -- status_update_interval = 1000
}

local executableTitles = {
    ["C://Program Files//Git//bin//bash.exe"] = "bash",
}

function tab_bar.onFormatTabTitle(tab, _, _, _, _, max_width)
    local title = executableTitles[tab.active_pane.title] or string.gsub(tab.active_pane.title, '%.exe$', '')
    local index = tab.tab_index + 1
    local padding = string.rep(' ', 1)

    local bg = '#0d0c0c'
    local fg = '#C8C093'

    title = index .. ':'.. wezterm.truncate_right(title, max_width / 2)

    if tab.is_active then
        title = title .. '*'
    end

    return {
        { Foreground = { Color = fg } },
        { Background = { Color = bg } },
        { Text = padding .. title .. padding },
    }
end

function tab_bar.onUpdateStatus(window, pane)
    if pane:is_alt_screen_active() then
        window:set_config_overrides({
            window_padding = {left = '0cell', right= '0cell', top= '0cell', bottom = '0cell'}
        })
    else
        window:set_config_overrides({
            window_padding = {left = '1cell', right= '1cell', top= '0.5cell', bottom = '0.5cell'}
        })
    end
    --[[
    local date = wezterm.strftime("%H:%M%p")
    local fg = '#C8C093'

    window:set_right_status(wezterm.format({
        { Foreground = { Color = fg }},
        { Text =  ' ' .. date .. ' ' },
    }))
    --]]
end

function tab_bar.apply_to_config(config)
    for index, value in pairs(tab_bar['options']) do
        config[index] = value
    end

    -- wezterm.on('format-tab-title', tab_bar.onFormatTabTitle)
    -- wezterm.on('update-status', tab_bar.onUpdateStatus)
end


return tab_bar
