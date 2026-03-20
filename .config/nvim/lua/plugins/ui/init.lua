return {
  {
    "mvllow/modes.nvim",
    version = "*",
    event = { "CursorMoved", "CursorMovedI" },
    opts = function()
      local palette = require("utils.colors").palette
      return {
        colors = {
          copy = palette.yellow,
          delete = palette.red,
          insert = palette.sky,
          visual = palette.mauve,
        },
        line_opacity = {
          copy = 0.4,
          delete = 0.4,
          insert = 0.4,
          visual = 0.4,
        },
      }
    end,
  },
  {
    "ntpeters/vim-better-whitespace",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    init = function()
      local palette = require("utils.colors").palette
      require("utils.highlight").force_set_highlights("vim-better-whitespace_hl", {
        ExtraWhitespace = { bg = palette.red },
      })
    end,
    config = function()
      vim.g.better_whitespace_enabled = 1
      vim.g.strip_whitespace_on_save = 1
      vim.g.strip_whitespace_confirm = 0
      vim.g.better_whitespace_filetypes_blacklist = {
        "dashboard",
        "lazy",
        -- default values
        "diff",
        "git",
        "gitcommit",
        "unite",
        "qf",
        "help",
        "markdown",
        "fugitive",
      }
    end,
  },
}
