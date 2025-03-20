return {
  {
    "prisma/vim-prisma",
  },
  {
    "stevearc/conform.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, {
            "json-lsp",
            "typescript-language-server",
            "tailwindcss-language-server",
            "prisma-language-server",
          })
        end,
      },
    },
  },
}
