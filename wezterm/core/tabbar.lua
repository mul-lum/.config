local wezterm = require('wezterm')
local tab_bar = {}

tab_bar.options = {
    tab_max_width = 20,
    use_fancy_tab_bar = false,
    -- tab_bar_at_bottom = true,
    -- hide_tab_bar_if_only_one_tab = true,
    show_new_tab_button_in_tab_bar = false,

    status_update_interval = 1500
}

local executableTitles = {
    ["C://Program Files//Git//bin//bash.exe"] = "bash",
}

function tab_bar.onFormatTabTitle(tab, _, _, _, _, max_width)
    local title = executableTitles[tab.active_pane.title] or string.gsub(tab.active_pane.title, '%.exe$', '')
    local index = tab.tab_index + 1
    local padding = string.rep(' ', 2)

    local bg = '#16161D'
    local fg = '#DCD7BA'

    title = padding .. index .. ': '.. wezterm.truncate_right(title, max_width / 2) .. padding

    if tab.is_active then
        bg = '#223249'
        fg = '#7E9CD8'
    end

    return {
        { Foreground = { Color = fg } },
        { Background = { Color = bg } },
        { Text = title },
    }
end

function tab_bar.onUpdateStatus(window, _)
    local date = wezterm.strftime("%Y-%m-%d %H:%M")

    window:set_right_status(wezterm.format({
        { Foreground = { Color = '#DCD7BA'}},
        { Background = { Color = '#223249'}},
        { Text =  ' ' .. date .. ' ' },
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
