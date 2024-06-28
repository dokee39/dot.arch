-- 可以把文件放置在 /custom/themes/<theme-name>.lua
-- 比如: custom/themes/siduck.lua

local M = {}

M.base_30 = {
  -- 30 colors based on base_16
  black = "#191724", --  nvim bg
  darker_black = "#13111e",
  white = "#e0def4",
  black2 = "#1f1d2a",
  one_bg = "#262431", -- real bg of onedark
  one_bg2 = "#2d2b38",
  one_bg3 = "#353340",
  grey = "#5a5a64",
  grey_fg = "#6b6970",
  grey_fg2 = "#7a787e",
  light_grey = "#89878d",
  red = "#eb6f92",
  baby_pink = "#b4637a",
  pink = "#ea9a97",
  line = "#2e2c39", -- for lines like vertsplit
  green = "#BAD4C9",
  vibrant_green = "#ABE9B3",
  nord_blue = "#86b9c2",
  blue = "#8bbec7",
  yellow = "#f6c177",
  sun = "#fec97f",
  purple = "#c4a7e7",
  dark_purple = "#907aa9",
  teal = "#6aadc8",
  orange = "#f6c177",
  cyan = "#a3d6df",
  statusline_bg = "#201e2b",
  lightbg = "#2d2b38",
  pmenu_bg = "#c4a7e7",
  folder_bg = "#6aadc8",
}

M.base_16 = {
  -- base16 colors
  base00 = "#191724",
  base01 = "#1f1d2e",
  base02 = "#26233a",
  base03 = "#6e6a86",
  base04 = "#908caa",
  base05 = "#e0def4",
  base06 = "#e0def4",
  base07 = "#524f67",
  base08 = "#eb6f92",
  base09 = "#f6c177",
  base0A = "#ebbcba",
  base0B = "#31748f",
  base0C = "#9ccfd8",
  base0D = "#c4a7e7",
  base0E = "#f6c177",
  base0F = "#7f7fAf",
}

M.type = "dark" -- light / dark

M = require("base46").override_theme(M, "myrose")

return M
