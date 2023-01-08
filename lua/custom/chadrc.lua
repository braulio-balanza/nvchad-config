-- First read our docs (completely) then check the example_config repo

local M = {}
local override = require "custom.override"

M.ui = {
  theme = "ayu-dark",
  theme_toggle = {
    "ayo_dark",
    "one_light",
  },
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
  },
}

M.mappings = require "custom.mappings"

return M
