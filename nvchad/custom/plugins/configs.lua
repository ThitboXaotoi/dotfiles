-- Overriding Configuration

local M = {}

M.treesitter = {
    ensure_installed = { "norg", --[[ other parsers you would wish to have ]] },
    highlight = { -- Be sure to enable highlights if you haven't!
    enable = true,
    }
}

return M
