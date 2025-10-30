-- Thanks to original theme https://github.com/microsoft/vscode/blob/main/extensions/theme-defaults/themes/dark_modern.json
-- VS Code Modern Dark theme for base46

local M = {}

M.base_30 = {
  white = "#CCCCCC",
  darker_black = "#161616", -- slightly darker than editor bg
  black = "#1F1F1F", -- editor bg in VS Code Modern
  black2 = "#2B2B2B", -- lighter bg variant
  one_bg = "#252525",
  one_bg2 = "#2E2E2E",
  one_bg3 = "#373737",
  grey = "#3C3C3C",
  grey_fg = "#464646",
  grey_fg2 = "#505050",
  light_grey = "#5A5A5A",
  red = "#F85149",
  baby_pink = "#ff6b6b",
  pink = "#C586C0",
  line = "#2B2B2B", -- for lines like vertsplit
  green = "#4EC9B0",
  green1 = "#5EA063",
  vibrant_green = "#5fd8af",
  blue = "#569CD6",
  nord_blue = "#0078D4",
  yellow = "#DCDCAA",
  sun = "#e6ffc9",
  purple = "#C586C0",
  dark_purple = "#b77bdf",
  teal = "#4FC1FF",
  orange = "#CE9178",
  cyan = "#9CDCFE",
  statusline_bg = "#181818",
  lightbg = "#2B2B2B",
  pmenu_bg = "#0078D4",
  folder_bg = "#CCCCCC",
}

M.base_16 = {
  base00 = "#1F1F1F", -- Default Background
  base01 = "#2B2B2B", -- Lighter Background (status bars, line numbers)
  base02 = "#313131", -- Selection Background
  base03 = "#3C3C3C", -- Comments, Invisibles
  base04 = "#6E7681", -- Dark Foreground (line numbers)
  base05 = "#CCCCCC", -- Default Foreground
  base06 = "#D7D7D7", -- Light Foreground
  base07 = "#FFFFFF", -- Lightest Foreground
  base08 = "#F85149", -- Variables, Tags, Errors (red)
  base09 = "#CE9178", -- Integers, Constants, Attributes (orange)
  base0A = "#DCDCAA", -- Classes, Functions (yellow)
  base0B = "#4EC9B0", -- Strings, Types (teal/green)
  base0C = "#9CDCFE", -- Support, Regular Expressions (cyan)
  base0D = "#569CD6", -- Keywords, Storage (blue)
  base0E = "#C586C0", -- Keywords, Control Flow (purple/pink)
  base0F = "#D7BA7D", -- Deprecated, Special (brown/gold)
}

M.polish_hl = {
  treesitter = {
    ["@variable.parameter"] = { fg = M.base_30.cyan },
    ["@keyword"] = { fg = M.base_16.base0E },
    ["@variable"] = { fg = M.base_30.cyan },
    ["@variable.member.key"] = { fg = M.base_30.cyan },
    ["@keyword.return"] = { fg = M.base_16.base0E },
    ["@keyword.python"] = { fg = M.base_16.base0E },
    ["@keyword.function"] = { fg = M.base_30.blue },
    ["@function"] = { fg = M.base_30.yellow },
    ["@function.call"] = { fg = M.base_30.yellow },
    ["@function.method.call"] = { fg = M.base_30.yellow },
    ["@function.builtin"] = { fg = M.base_30.yellow },
    ["@type"] = { fg = M.base_30.green },
    ["@type.builtin"] = { fg = M.base_30.green },
    ["@constant"] = { fg = M.base_30.teal },
    ["@module"] = { fg = M.base_30.green },
    ["Function"] = { fg = M.base_30.yellow },
    ["Include"] = { fg = M.base_16.base0E },
    ["Special"] = { fg = M.base_30.yellow },
    ["@string"] = { fg = M.base_16.base09 },
    ["@punctuation.delimiter"] = { fg = M.base_30.white },
    ["@constructor.python"] = { fg = M.base_30.green },
    ["Boolean"] = { fg = M.base_30.blue },
    ["@comment"] = { fg = M.base_30.green1 },
    ["@variable.builtin"] = { fg = M.base_30.blue },
    ["@constant.builtin"] = { fg = M.base_30.blue },
    ["@number"] = { fg = M.base_30.sun },
    ["@number.float"] = { fg = M.base_30.sun },
    ["@property"] = { fg = M.base_30.cyan },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "vscode_modern")

return M
