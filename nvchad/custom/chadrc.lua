-- Just an example, supposed to be placed in /lua/custom/

local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.plugins = {
    user = require "custom.plugins",
}

M.ui = {
   theme = "tokyonight",
   -- hl_add = require "custom.highlights",
   theme_toggle = { "tokyonight", "onenord_light" },
}

M.mappings = require "custom.mappings"

return M
