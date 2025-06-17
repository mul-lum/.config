local colors = {
  bg         = '#171717', -- sumiInk0
  bg2        = '#373737',
  fg         = "#ffffff", -- fujiWhite
  gray       = "#d0d0d0",
  green      = "#90A959", -- springGreen
  orange     = "#FFA557", -- surimiOrange
  magenta    = "#AA759F", -- springViolet1
  red        = "#b46958", -- waveRed
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg }, -- sumiInk3
  },
  insert = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  command = {
    a = { fg = colors.bg, bg = colors.gray},
    b = { fg = colors.fg, bg = colors.bg2 }, -- sumiInk4
    c = { fg = colors.fg, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.bg2, bg = colors.bg}, -- sumiInk6 on sumiInk1
    b = { fg = colors.bg2, bg = colors.bg },
    c = { fg = colors.bg2, bg = colors.bg },
  },
}
