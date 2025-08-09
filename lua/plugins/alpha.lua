--return {
--  "goolord/alpha-nvim",
--  -- dependencies = { 'echasnovski/mini.icons' },
--  dependencies = { 'nvim-tree/nvim-web-devicons' },
--  config = function()
--    local startify = require("alpha.themes.startify")
--    require'alpha'.setup(require'alpha.themes.theta'.config)
--
--    startify.file_icons.provider = "devicons"
--    require("alpha").setup(
--      startify.config
--    )
--  end,
--}


return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Banner
    dashboard.section.header.val = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⠶⠿⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⠛⠛⠛⠿⠶⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠾⠟⠛⠉⣀⣀⡤⠀⠀⠀⠀⠀⠀⠀⢰⣆⠀⠀⠀⠀⣰⡇⠀⠀⠀⠀⠀⠀⠀⢤⣄⣀⡉⠛⠻⠷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢀⣠⡾⠟⠋⢀⣠⣴⣾⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⣤⣤⣴⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣷⣦⣄⡀⠙⠻⢷⣤⡀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⢀⣴⠟⠉⢀⣴⣾⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣷⣦⡀⠉⠻⣦⡀⠀⠀⠀",
  "⠀⠀⣴⡿⠁⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠈⢻⣦⠀⠀",
  "⠀⣼⠏⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠹⣧⠀",
  "⢸⡿⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢿⡇",
  "⢸⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢸⡇",
  "⠸⣿⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⣾⡇",
  "⠀⠹⣧⠀⠈⢿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⣿⡿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⣼⡟⠀",
  "⠀⠀⠙⣷⣄⠀⠙⢿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠈⠻⡿⠁⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⢻⠟⠁⠀⠀⠀⠀⠙⣿⣿⣿⣿⡿⠋⠀⣠⣾⠏⠀⠀",
  "⠀⠀⠀⠈⠻⢷⣄⡀⠙⠻⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⠟⠋⠀⣠⣾⠟⠁⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠙⠻⣶⣤⡀⠉⠛⠦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠴⠛⠉⢀⣤⣶⠟⠋⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢶⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⡶⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠿⠶⢶⣦⣤⣤⣤⣤⣀⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣤⣴⣶⠶⠿⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",}

    -- Menu buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
      dashboard.button("g", "󰱼  Live Grep", ":Telescope live_grep<CR>"),
      dashboard.button("c", "  Config", ":e $MYVIMRC<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer

    -- Style
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
