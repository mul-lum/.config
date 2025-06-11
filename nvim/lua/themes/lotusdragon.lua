local colors = {
  bg         = "#16161D", -- sumiInk0
  fg         = "#DCD7BA", -- fujiWhite
  yellow     = "#DCA561", -- autumnYellow
  cyan       = "#7AA89F", -- waveAqua2
  darkblue   = "#223249", -- waveBlue1
  green      = "#98BB6C", -- springGreen
  orange     = "#FFA066", -- surimiOrange
  violet     = "#957FB8", -- oniViolet
  magenta    = "#938AA9", -- springViolet1
  blue       = "#7E9CD8", -- crystalBlue
  red        = "#E46876", -- waveRed
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.blue},
    b = { fg = colors.fg, bg = colors.darkblue }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg }, -- sumiInk3
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green},
    b = { fg = colors.blue, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.magenta},
    b = { fg = colors.blue, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red},
    b = { fg = colors.blue, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  command = {
    a = { fg = colors.bg, bg = colors.orange},
    b = { fg = colors.blue, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  inactive = {
    a = { fg = "#54546D", bg = "#181820"}, -- sumiInk6 on sumiInk1
    b = { fg = "#54546D", bg = "#181820" },
    c = { fg = "#54546D", bg = "#181820" },
  },
}
