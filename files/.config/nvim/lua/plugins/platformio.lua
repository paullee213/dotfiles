return {
  "anurag3301/nvim-platformio.lua",

  -- Dependencies are lazy-loaded by default unless specified otherwise.
  dependencies = {
    { "akinsho/toggleterm.nvim" },
    { "nvim-lua/plenary.nvim" },
    { "folke/which-key.nvim" },
    { "nvim-treesitter/nvim-treesitter" },

    -- install picker based on your likeing, remove or ignore rest

    -- telescope
    { "nvim-telescope/telescope.nvim" },
    { "nvim-telescope/telescope-ui-select.nvim" },

    -- Snacks picker
    { "folke/snacks.nvim", opts = {
      picker = { enabled = true, ui_select = true },
    } },

    -- Mini.Pick
    { "nvim-mini/mini.pick" },
  },
}
