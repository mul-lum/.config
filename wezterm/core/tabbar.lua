local wezterm = require('wezterm')
local tab_bar = {}

tab_bar.options = {
    tab_max_width = 16,
    use_fancy_tab_bar = false,
    -- tab_bar_at_bottom = true,
    hide_tab_bar_if_only_one_tab = true,
    show_new_tab_button_in_tab_bar = false,

    status_update_interval = 1500
}

function tab_bar.onFormatTabTitle(tab, _, _, _, _, max_width)
    local title = tab.active_pane.title
    local padding = string.rep(' ', 4)

    local bg = '#050505'
    local fg = '#ebdbb2'

    title = padding .. wezterm.truncate_right(title, max_width / 2) .. padding

    if tab.is_active then
        bg = '#ebdbb2'
        fg = '#050505'
    end

    return {
        { Foreground = { Color = fg } },
        { Background = { Color = bg } },
        { Text = title },
    }
end

function tab_bar.onUpdateStatus(window, _)
    local time = wezterm.time.now():format("%H:%M")
    local padding = string.rep(' ', 4)

    window:set_right_status(wezterm.format({
        { Background = { Color = '#ebdbb2'}},
        { Foreground = { Color = '#050505'}},
        { Text =  padding .. time .. padding .. ' '},
    }))
end

function tab_bar.apply_to_config(config)
    for index, value in pairs(tab_bar['options']) do
        config[index] = value
    end
end

wezterm.on('format-tab-title', tab_bar.onFormatTabTitle)
wezterm.on('update-status', tab_bar.onUpdateStatus)

return tab_bar
