-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local pluginConf = require "custom.plugins.configs"
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  user = function()
    local enable_providers = {
      "python3_provider",
      "node_provider",
      -- and so on
    }
    for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
    end
  end,
}

M.plugins = {
   overide = {
      ["nvim-treesitter/nvim-treesitter"] = pluginConf.treesitter,
   },
   user = require "custom.plugins",
}

M.ui = {
   theme = "tokyonight",
   -- hl_add = require "custom.highlights",
   theme_toggle = { "tokyonight", "onenord_light" },
}

M.mappings = require "custom.mappings"

return M
