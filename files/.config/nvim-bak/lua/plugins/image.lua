return {
  -- 1. Plugin to paste images from clipboard easily (<leader>p or similar)
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "assets", -- saves pasted images into an assets folder next to your markdown file
        file_type = "jpeg", -- ensures pasted clipboard data saves as a PNG
      },
    },
    keys = {
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste image from clipboard" },
    },
  },

  -- 2. Plugin to render images using Kitty's Graphics Protocol
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
        -- Snacks handles backend detection automatically, but respects Kitty protocol natively
      },
    },
  },
}
