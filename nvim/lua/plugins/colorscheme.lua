return {
  -- From: https://github.com/savq/melange-nvim
  {
    "savq/melange-nvim",
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("melange")
      -- Default using with dark background
      -- vim.opt.background = "light"
    end,
  },
}
