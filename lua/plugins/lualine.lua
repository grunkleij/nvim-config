return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "nightfly",
        section_separators = "",
        component_separators = "",
      },
    })
  end,
  event = "VeryLazy", -- optional: lazy-load when appropriate
}
