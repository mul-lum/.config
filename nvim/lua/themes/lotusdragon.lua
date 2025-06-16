local colors = {
  bg         = '#0d0c0c', -- sumiInk0
  bg2        = '#1D1C19',
  fg         = "#DCD7BA", -- fujiWhite
  fg2        = "#C8C093",
  gray       = "#a6a69c",
  green      = "#87a987", -- springGreen
  orange     = "#b6927b", -- surimiOrange
  magenta    = "#8992a7", -- springViolet1
  blue       = "#8ba4b0", -- crystalBlue
  red        = "#c4746e", -- waveRed
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg2, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg }, -- sumiInk3
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green},
    b = { fg = colors.fg2, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.magenta},
    b = { fg = colors.fg2, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red},
    b = { fg = colors.fg2, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  command = {
    a = { fg = colors.bg, bg = colors.orange},
    b = { fg = colors.fg2, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.bg2, bg = colors.bg}, -- sumiInk6 on sumiInk1
    b = { fg = colors.bg2, bg = colors.bg },
    c = { fg = colors.bg2, bg = colors.bg },
  },
}
