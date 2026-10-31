return {
  "oysandvik94/curl.nvim",
  ft = { "curl" },
  cmd = { "CurlOpen" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>co", "<cmd>CurlOpen<cr>", desc = "Open Scoped Curl Scratchpad" },
    { "<leader>cG", "<cmd>CurlOpen global<cr>", desc = "Open Global Curl Scratchpad" },
  },
  opts = {
    -- Default options (optional override if needed)
    default_flags = {},
  },
}
