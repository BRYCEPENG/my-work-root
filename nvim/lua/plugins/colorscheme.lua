return {
  -- From: https://github.com/savq/melange-nvim
  {
    "savq/melange-nvim",
    enabled = false,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("melange")
      -- Default using with dark background
      -- vim.opt.background = "light"
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      vim.opt.termguicolors = true
      -- vim.cmd.colorscheme("kanagawa-wave")
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },
  {
    "folke/tokyonight.nvim",
    -- enabled = false,
  },
}
