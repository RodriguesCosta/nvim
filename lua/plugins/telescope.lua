return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
