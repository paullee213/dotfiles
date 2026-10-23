local function evaluate_python_cell()
  local total_lines = vim.fn.line("$")

  -- Search backward for the starting '# %%' marker
  local start_line = vim.fn.search("^#\\s*%%", "bcnW")
  if start_line == 0 then
    start_line = 1
  else
    start_line = start_line + 1
  end

  -- Search forward for the ending '# %%' marker
  local end_line = vim.fn.search("^#\\s*%%", "nW")
  if end_line == 0 then
    end_line = total_lines
  else
    end_line = end_line - 1
  end

  if start_line <= end_line then
    vim.fn.MoltenEvaluateRange(start_line, end_line)
  end
end

return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    keys = {
      {
        "<leader>ma",
        function()
          vim.fn.MoltenEvaluateRange(1, vim.fn.line("$"))
        end,
        desc = "Evaluate All (Whole Buffer)",
      },
      { "<leader>mi", "<cmd>MoltenInit<cr>", desc = "Initialize Molten Kernel" },
      { "<leader>mc", evaluate_python_cell, desc = "Evaluate (# %%) Cell" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<cr>", desc = "Evaluate Line" },
      { "<leader>mr", "<cmd>MoltenReevaluateCell<cr>", desc = "Re-evaluate Active Cell" },
      { "<leader>mv", ":<C-u>MoltenEvaluateVisual<cr>", mode = "v", desc = "Evaluate Visual Selection" },
      { "<leader>mo", "<cmd>MoltenShowOutput<cr>", desc = "Show Output Window" },
      { "<leader>moo", "<cmd>noautocmd MoltenEnterOutput<cr>", desc = "Show & Enter Output Window" },
      { "<leader>mh", "<cmd>MoltenHideOutput<cr>", desc = "Hide Output Window" },
      { "<leader>md", "<cmd>MoltenDelete<cr>", desc = "Delete Cell Output" },
    },
  },
  {
    "3rd/image.nvim",
    build = false,
    opts = {
      backend = "kitty",
      max_width = 200,
      max_height = 100,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      window_overlap_clear_enabled = true,
      window_overlap_clear_target = "normal",
    },
  },
  {
    "GCBallesteros/jupytext.nvim",
    opts = {
      style = "hydrogen",
      output_extension = "py",
      force_ft = "python",
    },
  },
}
