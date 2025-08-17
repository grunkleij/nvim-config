return {
 "catppuccin/nvim",
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.cmd.colorscheme('catppuccin')
    flavour = "macchiato"
  end
}
