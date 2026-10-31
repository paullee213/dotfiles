-- 1 LSP for autocompletion, definitions, references, and name symbols
-- 2 Formatter for code styling and formatting (e.g., indentation, spacing, alignments)
-- 3 Linter for quality and code analysis

return {
  -- 1. Ensure Mason downloads non-LSP CLI tools automatically
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "eslint_d",
        "black",
        "vale",
      },
    },
  },

  -- 2. Configure Conform to actually format buffers using those tools
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        python = { "black" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  -- 3. Mason LSP Config (Your existing config)
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "texlab",
        "marksman",
        "ltex",
        "latex",
        "ts_ls",
        "tailwindcss",
        "html",
        "cssls",
        "pyright",
        "ruff",
      })
    end,
  },
}
