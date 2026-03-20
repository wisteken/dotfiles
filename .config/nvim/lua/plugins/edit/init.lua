return {
  {
    "folke/flash.nvim",
    version = "*",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    ---@type Flash.Config
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T" },
          char_actions = function(motion)
            return {
              -- only clever-f style
              [motion:lower()] = "next",
              [motion:upper()] = "prev",
            }
          end,
        },
      },
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    "numToStr/Comment.nvim",
    dependencies = { "nvim-ts-context-commentstring" },
    keys = {
      { "<Leader>/", mode = { "n", "x" } },
      { "<Leader>?", mode = { "n", "x" } },
    },
    opts = function()
      return {
        toggler = {
          line = "<Leader>/",
          block = "<Leader>?",
        },
        opleader = {
          line = "<Leader>/",
          block = "<Leader>?",
        },
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = { "CursorHold", "CursorHoldI" },
    config = true,
  },
  {
    "max397574/better-escape.nvim",
    event = { "BufReadPre", "BufWritePre", "BufNewFile" },
    opts = {
      timeout = 100,
      default_mappings = false,
      mappings = {
        i = { j = { k = "<ESC>" } },
        t = {
          j = { k = "<C-\\><C-n>" },
        },
      },
    },
  },
}
