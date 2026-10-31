return {
  "selimacerbas/markdown-preview.nvim",
  ft = "markdown",
  config = function()
    require("markdown_preview").setup({
      open_browser = true,
      default_theme = "dark",
    })
  end,
}
