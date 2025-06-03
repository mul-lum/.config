local wezterm = require 'wezterm'
local act = wezterm.action

local keybinds = {
    keys = {
        {
            key= 's',
            mods= 'CTRL|SHIFT',
            action = act.SplitPane {
                direction= 'Down',
                size= { Percent = 50 },
            },
        },

        {
            key= 'd',
            mods= 'CTRL|SHIFT',
            action = act.SplitPane {
                direction= 'Right',
                size= { Percent = 50 },
            },
        },

        {
            key= 'x',
            mods= 'CTRL|SHIFT',
            action = act.CloseCurrentPane { confirm= false },
        },

        {
            key= '9',
            mods= 'CTRL',
            action= act.PaneSelect {
                alphabet= '12345678'
            }
        },
    },
}

function keybinds.apply_to_config(config)
    if not config.keys then
        config.keys = keybinds.keys
    end
end

return keybinds
