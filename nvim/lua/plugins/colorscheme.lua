return {
  -- From: https://github.com/savq/melange-nvim
  {
    "savq/melange-nvim",
    -- enabled = false,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("melange")
      -- Default using with dark background
      -- vim.opt.background = "light"
    end,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
}
