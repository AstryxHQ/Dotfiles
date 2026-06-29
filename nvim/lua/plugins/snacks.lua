
return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      input = { enabled = true },
      select = { enabled = true }, -- Intercepts Mason's <C-f> filter
      picker = {
        enabled = true,
        sources = {
          -- Dynamically forces Mason's language dropdown to center screen
          select = {
            layout = {
              strategy = "center",
              width = 0.6,
              height = 0.4,
            }
          }
        }
      },
    },
    keys = {
      -- Global Search Mappings
      { "<leader>ff", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
      { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep All Files" },
      { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
      
      -- Colorscheme Picker Keybind
      { 
        "<leader>fc", 
        function() 
          Snacks.picker.colorschemes({ layout = "vertical" }) 
        end, 
        desc = "Find colorscheme" 
      },
    },
  }
}

