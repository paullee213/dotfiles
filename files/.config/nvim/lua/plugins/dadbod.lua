return {
  {
    "tpope/vim-dadbod",
    lazy = true,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" } },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    keys = {
      { "<leader>dd", "<cmd>DBUIToggle<cr>", desc = "Toggle DB UI" },
    },
    init = function()
      -- Save connection configurations locally in stdpath
      local data_path = vim.fn.stdpath("data")
      vim.g.db_ui_save_location = data_path .. "/dadbod_ui"
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_show_database_icon = 1

      -- Optional: Define default database connections here
      vim.g.dbs = {
        -- dev = "postgres://postgres:password@localhost:5432/my_db",
      }
    end,
  },

  -- Enable completion in SQL buffers (nvim-cmp)
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "vim-dadbod-completion" })
    end,
  },

  -- Enable completion in SQL buffers (blink.cmp - newer LazyVim default)
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      sources = {
        per_filetype = {
          sql = { "snippet", "dadbod", "buffer" },
        },
        providers = {
          dadbod = { name = "Dadbod", module = "vim-dadbod-completion.blink" },
        },
      },
    },
  },
}
