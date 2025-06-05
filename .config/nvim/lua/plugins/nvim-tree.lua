return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { '<C-t>', ':NvimTreeToggle<CR>', desc = "NvimTree" }
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
