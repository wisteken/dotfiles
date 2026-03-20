return {
  {
    "folke/which-key.nvim",
    version = "*",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = function()
      local wk = require("which-key")
      wk.setup({
        plugins = {
          presets = {
            operators = false,
          },
        },
      })
      wk.add({
        { "<leader>g", group = "+Go to File, Code or GitHub" },
        { "<leader>c", group = "+Comment, Code" },
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    version = "*",
    event = { "VeryLazy" },
    dependencies = { "plenary.nvim" },
    opts = {
      highlight = { after = "" },
    },
  },
  {
    "linrongbin16/gitlinker.nvim",
    version = "*",
    cmd = "GitLink",
    keys = {
      { "<leader>gl", "<cmd>GitLink<cr>", mode = { "n", "v" }, desc = "Git: yank git permalink" },
      { "<leader>gL", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Git: open git permalink" },
    },
    opts = {},
  },
  {
    "lewis6991/gitsigns.nvim",
    version = "*",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    init = function()
      require("utils.highlight").force_set_highlights("gitsigns_hl", {
        SignColumn = { ctermbg = "none", bg = "none" },
        GitGutterAdd = { ctermbg = "none", bg = "none" },
        GitGutterChange = { ctermbg = "none", bg = "none" },
        GitGutterDelete = { ctermbg = "none", bg = "none" },
      })
    end,
    config = function()
      require("gitsigns").setup()
    end,
  },
  -- mini.diff: インライン差分表示（gitsignsを補完）
  {
    "echasnovski/mini.diff",
    event = "VeryLazy",
    keys = {
      { "<leader>gO", function() require("mini.diff").toggle_overlay() end, desc = "Git: Toggle diff overlay" },
    },
    opts = {
      view = {
        style = "sign",
        signs = { add = "▎", change = "▎", delete = "" },
      },
      mappings = {
        apply = "gh",
        reset = "gH",
        textobject = "gh",
        goto_first = "[H",
        goto_prev = "[h",
        goto_next = "]h",
        goto_last = "]H",
      },
    },
  },
  {
    "RRethy/vim-illuminate",
    event = { "CursorMoved", "CursorMovedI" },
    init = function()
      local palette = require("utils.colors").palette
      require("utils.highlight").force_set_highlights("vim-illuminate_hl", {
        IlluminatedWordText = { ctermbg = 238, bg = palette.surface1 },
        IlluminatedWordRead = { ctermbg = 238, bg = palette.surface1 },
        IlluminatedWordWrite = { ctermbg = 238, bg = palette.surface1 },
      })
    end,
    config = function()
      require("illuminate").configure()
    end,
  },
}
