return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },


  config = function()
    -- Optional: your Neo-tree setup here
require("neo-tree").setup({
    --  filesystem = {
    --    -- 🚫 Do not auto-open on startup
    --    hijack_netrw_behavior = "disabled",
    --  },
    })

    -- ✅ Keybinding to toggle Neo-tree
    vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { silent = true, desc = "Toggle Neo-tree" })
  end,
  -- lazy = true, -- neo-tree will lazily load itself
}

