return {
   ["tpope/vim-surround"] = {},
   -- ["kylechui/nvim-surround"] = {}, --maybe will try to replace vim-surround
   ["mattn/emmet-vim"] = {},


   -- Python Plugins
   ["davidhalter/jedi-vim"] = {},


   -- Neorg
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
   }
}

