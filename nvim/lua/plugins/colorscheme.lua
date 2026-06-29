
return {
  -- ── Colorschemes ───────────────────────────────────────────────────
  { "folke/tokyonight.nvim",      lazy = true },
  { "catppuccin/nvim",            name = "catppuccin", lazy = true },
  { "rose-pine/neovim",           name = "rose-pine",  lazy = true },
  { "rebelot/kanagawa.nvim",      lazy = true },
  { "EdenEast/nightfox.nvim",     lazy = true },
  { "sainnhe/gruvbox-material",   lazy = true },
  { "AlphaTechnolog/pywal.nvim",  name = "pywal", lazy = true },

  -- ── Active colorscheme ─────────────────────────────────────────────
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
        },
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },
}

