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
            "biome",
          })
        end,
      },
    },
    opts = function(_, opts)
      local biome = { "biome-check", "biome" }

      local user_opts = {
        formatters_by_ft = {
          json = biome,
          jsonc = biome,
          css = biome,
          javascript = biome,
          typescript = biome,
          javascriptreact = biome,
          typescriptreact = biome,
        },
        -- LazyVim will merge the options you set here with builtin formatters.
        -- You can also define any custom formatters here.
        ---@type table<string,table>
        formatters = {
          biome = {
            cwd = require("conform.util").root_file({
              "biome.json",
              "biome.jsonc",
            }),
            require_cwd = true,
          },
          ["biome-check"] = {
            cwd = require("conform.util").root_file({
              "biome.json",
              "biome.jsonc",
            }),
            require_cwd = true,
          },
        },
      }

      return vim.tbl_deep_extend("force", opts, user_opts)
    end,
  },
}
