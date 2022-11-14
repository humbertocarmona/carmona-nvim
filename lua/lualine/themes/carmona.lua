local colors = require("carmona.colors").setup()

local carmona = {}

carmona.normal = {
  a = { bg = colors.crystalBlue, fg = colors.bg_dark },
  b = { bg = colors.winterBlue, fg = colors.crystalBlue },
  c = { bg = colors.bg_light0, fg = colors.fg },
}

carmona.insert = {
  a = { bg = colors.autumnGreen, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.autumnGreen },
}

carmona.command = {
  a = { bg = colors.boatYellow2, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.boatYellow2 },
}

carmona.visual = {
  a = { bg = colors.oniViolet, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.oniViolet },
}

carmona.replace = {
  a = { bg = colors.autumnRed, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.autumnRed },
}

carmona.inactive = {
  a = { bg = colors.bg_status, fg = colors.crystalBlue },
  b = { bg = colors.bg_status, fg = colors.fujiGray, gui = "bold" },
  c = { bg = colors.bg_status, fg = colors.fujiGray },
}

if vim.g.carmona_lualine_bold then
  for _, mode in pairs(carmona) do
    mode.a.gui = "bold"
  end
end

return carmona
