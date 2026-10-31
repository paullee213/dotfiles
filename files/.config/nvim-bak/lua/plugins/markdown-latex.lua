return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      latex = {
        enabled = true,
        -- Force it to look for utftex first, then fall back to latex2text (pylatexenc)
        converter = { "utftex", "latex2text" },
      },
    },
  },
}
