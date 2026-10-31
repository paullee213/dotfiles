return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "journalctl",
        path = "~/Projects/journalctl",
      },
    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)

    -- Auto-command to set up keybinds only for files inside your notebook workspaces
    vim.api.nvim_create_autocmd("BufReadPre", {
      pattern = {
        vim.fn.expand("~") .. "/notebook/personal/**.md",
        vim.fn.expand("~") .. "/notebook/work/**.md",
      },
      callback = function()
        local map = function(lhs, rhs, desc)
          vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Obsidian: Quick Switch" })
        end
      end,
    })
  end,
}
