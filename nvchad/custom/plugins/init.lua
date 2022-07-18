return {
   ["tpope/vim-surround"] = {},
   ["mattn/emmet-vim"] = {},
   ["nvim-neorg/neorg"] = {
      -- tag = "latest",
      ft = "norg",
      after = "nvim-treesitter", -- You may want to specify Telescope here as well
      config = function()
         require('neorg').setup {
            load = {
               ["core.defaults"] = {}
            }
         }
      end
   },
}

