return {
  {
    "codota/tabnine-nvim",
    event = "VeryLazy",
    build = "./dl_binaries.sh",
    enabled = true,
    cmd = { "TabnineStatus", "TabnineDisable", "TabnineEnable", "TabnineToggle" },
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<C-e>",
        dismiss_keymap = "<A-c>",
        debounce_ms = 1200,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt", "NvimTree" },
        ignore_certificate_errors = false,
      })
    end,
  },
}
